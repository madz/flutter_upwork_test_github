import 'package:equatable/equatable.dart';
import 'package:flutter_upwork_test_github/models/github_commit_model.dart';
import 'package:meta/meta.dart';

abstract class GithubState extends Equatable {
  const GithubState();

  @override
  List<Object> get props => [];
}

class GithubEmptyState extends GithubState {}

class GithubLoadingState extends GithubState {}

class GithubLoadedState extends GithubState {
  final List<GitHubCommitModel> commits;
  const GithubLoadedState({@required this.commits}) : assert(commits != null);

  @override
  List<Object> get props => [commits];
}

class GithubErrorState extends GithubState {}
