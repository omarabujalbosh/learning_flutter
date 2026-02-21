import 'package:dio/dio.dart';
class AuthService{
  final Dio _dio= Dio(BaseOptions(baseUrl: 'https://api.mazen.com'));
  
}