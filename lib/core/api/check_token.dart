import 'package:flutter/foundation.dart';
import 'package:jwt_decode/jwt_decode.dart';

Future<bool> isTokenExpired(String token) async{
  DateTime? expiryDate = Jwt.getExpiryDate(token);
  bool? isExpired = Jwt.isExpired(token);

  debugPrint(expiryDate.toString());
  debugPrint(isExpired.toString());

  return  isExpired;
}