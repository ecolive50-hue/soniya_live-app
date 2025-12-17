
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/constants.dart';
import '../models/user_model.dart';

class ApiService {

  static Future<UserModel> getProfile(
      String userId, String name) async {

    final res = await http.post(
      Uri.parse("$BASE_URL/user"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "userId": userId,
        "name": name,
      }),
    );

    return UserModel.fromJson(jsonDecode(res.body));
  }

  static Future<int> addCoins(String userId, int amount) async {
    final res = await http.post(
      Uri.parse("$BASE_URL/add-coins"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "userId": userId,
        "amount": amount,
      }),
    );

    return jsonDecode(res.body)['coins'];
  }
}
