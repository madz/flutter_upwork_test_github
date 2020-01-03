import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_upwork_test_github/github_bloc/bloc.dart';
import 'package:flutter_upwork_test_github/models/github_commit_model.dart';

import 'github_event.dart';
import 'github_state.dart';

class GithubBloc extends Bloc<GithubEvent, GithubState> {
  final GithubRepository repository;

  GithubBloc({@required this.repository}) : assert(repository != null);

  @override
  GithubState get initialState => GithubEmptyState();

  @override
  Stream<GithubState> mapEventToState(
    GithubEvent event,
  ) async* {
    if (event is FetchGithubCommits) {
      yield GithubLoadingState();
      try {
        List<GitHubCommit> commits = await repository.fetchCommits();

        if (commits.isEmpty) {
          yield GithubEmptyState();
        } else {
          yield GithubLoadedState(commits: commits);
        }
      } catch (_) {
        yield GithubErrorState();
      }
    }
  }
}
