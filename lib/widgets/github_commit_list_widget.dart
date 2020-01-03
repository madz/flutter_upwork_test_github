import 'package:flutter/material.dart';
import 'package:flutter_upwork_test_github/models/github_commit_model.dart';

class GithubCommitListWidget extends StatelessWidget {
  final List<GitHubCommitModel> commits;

  GithubCommitListWidget({this.commits});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: commits.length,
      itemBuilder: (context, index) {
        final GitHubCommitModel commit = commits.elementAt(index);
        return ListTile(
          leading: Column(
            children: <Widget>[
              Expanded(
                child: Image.network(commit.author.avatarUrl),
              ),
              Text('${commit.commit.author.name}'),
            ],
          ),
          title: Card(
            child: Text('${commit.commit.message}'),
          ),
        );
      },
    );
  }
}
