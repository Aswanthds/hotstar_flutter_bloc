import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:hotstar_bloc/appliation/search_data_bloc/search_data_bloc.dart";
import "package:hotstar_bloc/core/api_key.dart";
import "package:hotstar_bloc/presentation/widgets/search_redirect_page.dart";
import "package:shimmer/shimmer.dart";

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<SearchDataBloc>(context)
            .add(const SearchDataEvent.intialize());
      },
    );

    return SizedBox(
      height: 650,
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                    left: 10,
                    right: 10,
                  ),
                  child: SizedBox(
                    height: 60,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: "Movies, shows and more",
                        hintStyle: const TextStyle(color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        BlocProvider.of<SearchDataBloc>(context).add(
                            SearchDataEvent.searchMovie(movieQuery: value));
                      },
                    ),
                  ),
                ),
                BlocBuilder<SearchDataBloc, SearchDataState>(
                  builder: (context, state) {
                    if (state.searchResult.isEmpty) {
                      return SearchIdleWidget(
                        state: state,
                      );
                    } else {
                      return SearchResultWidget(state: state);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchResultWidget extends StatelessWidget {
  final SearchDataState state;
  const SearchResultWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    if (state.searchResult.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
          color: Colors.white,
        ),
      );
    }
    if (state.isLoading) {
      return SizedBox(
        child: Shimmer.fromColors(
            baseColor: Colors.white,
            period: const Duration(milliseconds: 5000),
            highlightColor: const Color.fromARGB(255, 7, 43, 83),
            child: const SizedBox()),
      );
    }
    return Expanded(
      child: ListView.builder(
        itemCount: state.searchResult.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: '$imageAppendUrl${state.searchResult[index].posterPath}' !=
                    '${imageAppendUrl}null'
                ? Image.network(
                    '$imageAppendUrl${state.searchResult[index].posterPath}')
                : Container(
                    width: 50,
                    color: Colors.red,
                  ),
            title: Text(
              state.searchResult[index].title.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "${state.searchResult[index].overview}",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) =>
                      SearchRedirectPage(index: index, state: state),
                );
              },
              child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchIdleWidget extends StatelessWidget {
  final SearchDataState state;
  const SearchIdleWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    if (state.idleList.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
        ),
      );
    }
    if (state.isLoading) {
      return SizedBox(
        child: Shimmer.fromColors(
            baseColor: Colors.white,
            period: const Duration(milliseconds: 5000),
            highlightColor: const Color.fromARGB(255, 7, 43, 83),
            child: const SizedBox()),
      );
    }

    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) => GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                      image: NetworkImage(
                          '$imageAppendUrl${state.idleList[index].posterPath}'))),
            ),
          ),
        ),
        itemCount: state.idleList.length,
      ),
    );
  }
}
