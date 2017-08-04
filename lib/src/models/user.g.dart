// GENERATED CODE - DO NOT MODIFY BY HAND

part of angel.src.models.user;

// **************************************************************************
// Generator: JsonModelGenerator
// Target: class _User
// **************************************************************************

class User extends _User {
  @override
  String id;

  @override
  String username;

  @override
  String email;

  @override
  String password;

  @override
  String salt;

  @override
  DateTime createdAt;

  @override
  DateTime updatedAt;

  User(
      {this.id,
      this.username,
      this.email,
      this.password,
      this.salt,
      this.createdAt,
      this.updatedAt});

  factory User.fromJson(Map data) {
    return new User(
        id: data['id'],
        username: data['username'],
        email: data['email'],
        password: data['password'],
        salt: data['salt'],
        createdAt: data['created_at'] is DateTime
            ? data['created_at']
            : (data['created_at'] is String
                ? DateTime.parse(data['created_at'])
                : null),
        updatedAt: data['updated_at'] is DateTime
            ? data['updated_at']
            : (data['updated_at'] is String
                ? DateTime.parse(data['updated_at'])
                : null));
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'password': password,
        'salt': salt,
        'created_at': createdAt == null ? null : createdAt.toIso8601String(),
        'updated_at': updatedAt == null ? null : updatedAt.toIso8601String()
      };

  static User parse(Map map) => new User.fromJson(map);

  User clone() {
    return new User.fromJson(toJson());
  }
}
