import 'package:belajar_mvvm/view/movie_list_page.dart';
import 'package:belajar_mvvm/viewModel/movie_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apliasi MVVM Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
      create: (context) => MovieListViewModel(),
       child: MovieListPage(),
      ),
    );
  }
}