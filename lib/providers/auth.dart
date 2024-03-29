import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String? _token;
  DateTime? _expiryDate;
  String? _userId;

  // bool? get isAuth {
  //   return token != null;
  // }
  //
  // String? get token {
  //   if (_expiryDate != null &&
  //       _expiryDate!.isAfter(DateTime.now()) &&
  //       _token != null) {
  //     return _token;
  //   }
  //   return null;
  // }
  //
  // Future<void> signup(String email, String password) async {
  //   const url = '';
  //   try {
  //     final response = await http.post(
  //       url,
  //       body: json.encode(
  //         {
  //           'email': email,
  //           'password': password,
  //           'returnSecureToken': true,
  //         },
  //       ),
  //     );
  //     final responseData = json.decode(response.body);
  //     if (responseData['error'] != null) {
  //       throw HttpException(responseData['error']['message']);
  //     }
  //     _token = responseData['idToken'];
  //     _userId = responseData['localId'];
  //     _expiryDate = DateTime.now().add(
  //       Duration(
  //         seconds: int.parse(
  //           responseData['expiresIn'],
  //         ),
  //       ),
  //     );
  //     notifyListeners();
  //   } catch (error) {
  //     throw error;
  //   }
  // }
  //
  // Future<void> login(String email, String password) async {
  //   const url = '';
  //   final response = await http.post(
  //     url,
  //     body: json.encode(
  //       {
  //         'email': email,
  //         'password': password,
  //         'returnSecureToken': true,
  //       },
  //     ),
  //   );
  // }
  void logout() {
    _token = null;
    _userId = null;
    _expiryDate = null;
    notifyListeners();
  }
}
