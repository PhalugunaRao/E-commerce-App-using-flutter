import 'dart:convert';

import 'package:flutter_mvvm/movie.dart';
import 'package:http/http.dart' as http;

class Webservice{

  Future<List<Movie>> loadMovies() async{
    String url="https://omdbapi.com/?s=batman&apikey=3a6ccfff";
    final response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      final json = jsonDecode(response.body);
      final Iterable list = json["Search"];
      return list.map((item) => Movie.fromJson(item)).toList();
    }else{
      throw Exception("Error loading movies");
    }
  }
}