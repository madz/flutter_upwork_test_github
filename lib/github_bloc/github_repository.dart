import 'dart:convert';

import 'package:flutter_upwork_test_github/constants/github_constants.dart';
import 'package:flutter_upwork_test_github/models/github_commit_model.dart';
import 'package:http/http.dart' as http;

class GithubRepository {
  Future<List<GitHubCommitModel>> fetchCommits() async {
    String url = GithubConstants.getUserCommits;
    print('fetchCommits URL = $url');
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        final Iterable json = result;

        List<GitHubCommitModel> commits =
            json.map((commit) => GitHubCommitModel.fromJson(commit)).toList();

        print('commits length = ${commits.length}');

        return commits;
      } else {
        throw Exception('There was an error fetching github commits');
      }
    } catch (e) {
      throw Exception('There was an error accessing Github API: $e');
    }
  }
}
