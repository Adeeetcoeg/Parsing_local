import 'package:flutter/rendering.dart';

class Sample {
  String? name;
  String? jk;
  int? age;
  Github? github;

  List<String> hobi;
  Sample({
    required this.name,
    required this.age,
    required this.jk,
    required this.hobi,
    required this.github,
  });

  @override
  String toString() {
    return 'Sample{name: $name, age: $age, jk: $jk, hobi: $hobi, github: $github}';
  }

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      name: json["name"],
      age: json["age"],
      jk: json["jk"],
      hobi: List<String>.from(json["hobi"]),
      github: Github.fromJson(json["github"]),
    );
  }
}

class Github {
  String username;
  int repository;

  Github({
    required this.username,
    required this.repository,
  });
  @override
  String toString() {
    return 'Github{username: $username, repository: $repository}';
  }

  factory Github.formJson(Map<String, dynamic> json) {
    return Github(username: json["username"], repository: json["repository"]);
  }

  static fromJson(json) {}
}
