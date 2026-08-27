class Movie {
  String title;
  String studio;
  String rating;

  // One constructor with optional parameter
  Movie(this.title, this.studio, [this.rating = "PG"]);

  // Returns only movies whose rating contains "PG"
  static List<Movie> getPG(List<Movie> movies) {
    return movies.where((movie) => movie.rating.contains("PG")).toList();
  }

  void view() {
    print("Title: $title");
    print("Studio: $studio");
    print("Rating: $rating");
  }
}

void main() {
  Movie movie1 = Movie(
    "Casino Royale",
    "Eon Productions",
    "PG13",
  );

  movie1.view();

  print("----------------");

  // Testing getPG
  Movie movie2 = Movie("Openheimer", "Hollywood", "R");
  Movie movie3 = Movie("Race", "Polly", "PG");

  List<Movie> movies = [movie1, movie2, movie3];

  List<Movie> pgMovies = Movie.getPG(movies);

  for (Movie movie in pgMovies) {
    movie.view();
    print("----------------");
  }
}