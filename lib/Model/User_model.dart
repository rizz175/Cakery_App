class User {
  int userId;
  String name;
  String email;
  String password;


  User({required this.userId, required this.name, required this.email, required this.password});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        userId: responseData['id'],
        name: responseData['name'],
        email: responseData['email'],
        password: responseData['phone'],

    );
  }
}