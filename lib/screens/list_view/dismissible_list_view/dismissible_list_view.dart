import 'package:flutter/material.dart';
import 'package:flutter_design/screens/list_view/dismissible_list_view/data/movie_list.dart';
import 'package:flutter_design/screens/list_view/dismissible_list_view/models/movie.dart';
import 'package:flutter_design/screens/list_view/dismissible_list_view/widgets/movie-card.dart';

class DismissibleListView extends StatefulWidget {
  DismissibleListView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DismissibleListViewState createState() => new _DismissibleListViewState();
}

class _DismissibleListViewState extends State<DismissibleListView> {
  final List<Movie> movies = MovieList.getMovies();

  Widget _buildMoviesList() {
    return Container(
      child: movies.length > 0
          ? ListView.builder(
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                      movies.removeAt(index);
                      //delete from database
                    });
                  },
                  secondaryBackground: Container(
                    child: Center(
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.red,
                  ),
                  background: Container(),
                  child: MovieCard(movie: movies[index]),
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                );
              },
            )
          : Center(child: Text('No Items')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: _buildMoviesList(),
    );
  }
}
