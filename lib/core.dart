import 'package:flutter/material.dart';

class AppColors {
  static Color primary = const Color(0xff128C7E);
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.close), onPressed: (){
        close(context, buildResults(context));
      },)
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(icon: const Icon(Icons.arrow_back), onPressed: (){
        close(context, buildResults(context));
      },);
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(child: Text("Search results ..."));
  }

}