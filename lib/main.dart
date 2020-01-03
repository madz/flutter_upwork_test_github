import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'github_bloc/bloc.dart';
import 'screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => GithubBloc(
          repository: GithubRepository(),
        ),
        child: HomeScreen(),
      ),
    );
  }
}
