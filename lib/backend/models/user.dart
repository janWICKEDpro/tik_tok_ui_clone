class User {
  String? username;
  String? email;
  String? password;
  int? followers;
  int? following;
  int? numberOfPosts;

  User(
      {this.email,
      this.followers,
      this.following,
      this.numberOfPosts,
      this.username});

  String toJson() {
    return "{username: $username, email: $email, password:$password }";
  }
}
