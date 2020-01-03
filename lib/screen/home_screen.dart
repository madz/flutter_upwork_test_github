import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_upwork_test_github/github_bloc/bloc.dart';
import 'package:flutter_upwork_test_github/widgets/github_commit_list_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<GithubBloc>(context).add(
      FetchGithubCommits(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upwork Test'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
            ),
            onPressed: () {
              print('Refres btn pressed!');
              BlocProvider.of<GithubBloc>(context).add(
                FetchGithubCommits(),
              );
            },
            tooltip: 'Re-fetch the latest commits.',
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
          child: BlocBuilder<GithubBloc, GithubState>(
            builder: (context, state) {
              if (state is GithubLoadingState) {
                return CircularProgressIndicator();
              } else if (state is GithubLoadedState) {
                return GithubCommitListWidget(
                  commits: state.commits,
                );
              } else if (state is GithubEmptyState) {
                return Text(
                  'No results',
                  style: TextStyle(color: Colors.blue),
                );
              } else {
                return Text(
                  'Something went wrong!',
                  style: TextStyle(color: Colors.red),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
