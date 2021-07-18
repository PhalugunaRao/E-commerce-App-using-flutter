import 'package:flutter/material.dart';
import 'webservice.dart';
import 'movie.dart';

void main() => runApp(App());

class App extends StatefulWidget{
  @override
 _AppState createState() => _AppState();

}

class _AppState extends State<App> {
  List<Movie> _movies =List<Movie>();

  @override
  void initState() {
    super.initState();
    _loadMovies();
  }
  void _loadMovies() async {
    final result = await Webservice().loadMovies();
    setState(() {
      _movies=result;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Movies"),
        ),
        body: ListView.builder(
            itemCount: _movies.length,
          itemBuilder: (context,index){
              return ListTile(
                leading: Image.network(_movies[index].poster),
                title: Text(_movies[index].title??"Geethika"),
              );
          },
        ),
      ),
    );
  }
}


