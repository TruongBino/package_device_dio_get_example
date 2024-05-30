import 'package:dio/dio.dart';

class UserService {
  final Dio _dio = Dio();

  Future<List<dynamic>> fetchUsers() async {
    try {
      final response = await _dio.get('https://jsonplaceholder.typicode.com/users');
      return response.data;
    } catch (e) {
      print('Error fetching users: $e');
      throw e;
    }
  }
}
