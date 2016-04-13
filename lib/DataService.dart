
import 'Movie.dart';
import 'FullMovie.dart';

abstract class DataService {
  List<Movie> getMovies ();
  FullMovie getMovie( num id);
}

class TMDBService implements DataService {
  List<Movie> getMovies () {
    print("movies lijst");
    //    lijst van movie
  }

  @override
  FullMovie getMovie(num id) {

  }

}
