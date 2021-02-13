import 'dart:convert';

import 'package:exemplo_arq_state/modules/search/domain/entities/user.entity.dart';

class ResultUser extends User {
  ResultUser({
    String user,
    int id,
    String image,
  }) : super(id: id, user: user, image: image);

  Map<String, dynamic> toMap() {
    return {
      'user': user,
      'id': id,
      'image': image,
    };
  }

  factory ResultUser.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ResultUser(
      user: map['login'],
      id: map['id'] as int,
      image: map['avatar_url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultUser.fromJson(String source) =>
      ResultUser.fromMap(json.decode(source));
}
