import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_upwork_test_github/github_bloc/bloc.dart';
import 'package:flutter_upwork_test_github/models/github_commit_model.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

// Create a MockClient using the Mock class provided by the Mockito package.
// Create new instances of this class in each test.
class MockClient extends Mock implements http.Client {}

void main() {
  group('TodosState', () {
    group('GithubLoadingState', () {
      test('toString returns correct value', () {
        expect(
          GithubLoadingState().toString(),
          'GithubLoadingState',
        );
      });
    });

    group('GithubLoadedState', () {
      test('toString returns correct value', () {
        List<GitHubCommitModel> commits = [];
        expect(
          GithubLoadedState(commits: commits).toString(),
          'GithubLoadedState { commits: [] }',
        );
      });
    });

    group('TodosNotLoaded', () {
      test('toString returns correct value', () {
        expect(
          GithubLoadingState().toString(),
          'GithubLoadingState',
        );
      });
    });
  });
}
