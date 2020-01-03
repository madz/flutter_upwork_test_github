import 'package:equatable/equatable.dart';

abstract class GithubEvent extends Equatable {
  const GithubEvent();
}

class FetchGithubCommits extends GithubEvent {
  @override
  List<Object> get props => [];
}
