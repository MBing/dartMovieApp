class Movie {
//  contents of a regular movie that shows up in the default result page
  num id;
  String backdrop_path;
  String title;

  Movie (Map<String, dynamic> json) {
    id = json['id'];
    backdrop_path = json['backdrop_path'];
    title = json['title'];
  }

//  Movie.fromJSON(Map<String, dynamic> json) {
//    id = json['id'];
//  }
}