import 'dart:convert';
import 'package:http/http.dart' as http;

class RandomUserService {
  Future<Map<String, dynamic>> fetchRandomUser() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Error al cargar usuario');
    }
  }
}
