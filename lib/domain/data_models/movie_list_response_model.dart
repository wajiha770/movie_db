import 'package:movie_db/domain/data_models/movie_model.dart';

import 'date_model.dart';

class MovieListResponseModel {
  MovieListResponseModel({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  Date dates;
  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory MovieListResponseModel.fromJson(Map<String, dynamic> json) =>
      MovieListResponseModel(
        dates: Date.fromJson(json["dates"]),
        page: json["page"],
        results:
            List<Movie>.from(json["results"].map((x) => Movie.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}
