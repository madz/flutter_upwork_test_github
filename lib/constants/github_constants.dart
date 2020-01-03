class GithubConstants {
  static String baseGithubUrl = "https://api.github.com";

  static String user = "madz";
  static String $ = "flutter_upwork_test_github";

  static String getUser = "$baseGithubUrl/users$user";
  static String getUserRepos = "$baseGithubUrl/users/$user/repos";
  static String getUserCommits = "$baseGithubUrl/repos/$user/$user/commits";
}
