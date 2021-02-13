import 'package:flutter/material.dart';

class DetailUserPage extends StatelessWidget {
  final Map<String, dynamic> user;

  DetailUserPage({this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(user['nome']),
          Text(user['email']),
          Text(user['idade'].toString()),
          Text(user['cpf']),
        ],
      ),
    );
  }
}
