import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_upwork_test_github/github_bloc/bloc.dart';

void main() {
  group('GithubEvent', () {
    group('FetchGithubCommits', () {
      test('toString returns correct value', () {
        expect(
          FetchGithubCommits().toString(),
          'FetchGithubCommits',
        );
      });
    });
  });
}
