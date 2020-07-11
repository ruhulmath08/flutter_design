import 'package:flutter/material.dart';
import 'package:flutter_design/screens/list_view/dismissible_list_view/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  MovieCard({this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(movie.imageUrl),
            ),
            title: Text(movie.title),
            subtitle: Text(movie.genre),
            trailing: Text(movie.year),
            onTap: (){
              print(movie.id);
            },
          )
        ],
      ),
    );
  }
}