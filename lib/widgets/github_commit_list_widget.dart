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
        final GitHubCommitModel githubCommitModel = commits.elementAt(index);
        final String avatarUrl = githubCommitModel.committer == null
            ? ""
            : githubCommitModel.committer.avatarUrl;
        return ListTile(
          leading: Column(
            children: <Widget>[
              Expanded(
                child: Image(
                  image: avatarUrl == null || avatarUrl.isEmpty
                      ? AssetImage('assets/github_logo.png')
                      : NetworkImage(avatarUrl),
                ),
              ),
              Text('${githubCommitModel.commit.author.name}'),
            ],
          ),
          title: Card(
            child: Text('${githubCommitModel.commit.message}'),
          ),
        );
      },
    );
  }
}
