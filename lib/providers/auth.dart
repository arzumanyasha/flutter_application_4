import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> signup(
    String email,
    String password,
  ) async {
    const params = {
      'key': 'AIzaSyCDmy3RQ35-ZwqImhWFoidaEMYfs9WkCVc',
    };

    final url = Uri.https(
        'identitytoolkit.googleapis.com', '/v1/accounts:signUp', params);

    final response = await http.post(url,
        body: json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ));
    print(response.toString());
  }
}
