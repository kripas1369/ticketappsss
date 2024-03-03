// movie_model.dart

class BookingList {
  bool? success;
  List<Movies>? movies;

  BookingList({this.success, this.movies});

  BookingList.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['movies'] != null) {
      movies = <Movies>[];
      json['movies'].forEach((v) {
        movies!.add(new Movies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.movies != null) {
      data['movies'] = this.movies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Movies {
  String? nameMovie;
  String? detailsMovie;
  int? priceMovie;
  String? timeMovie;

  Movies({this.nameMovie, this.detailsMovie, this.priceMovie, this.timeMovie});

  Movies.fromJson(Map<String, dynamic> json) {
    nameMovie = json['name_movie'];
    detailsMovie = json['details_movie'];
    priceMovie = json['price_movie'] is int ? json['price_movie'] : int.tryParse(json['price_movie'] ?? '');
    timeMovie = json['time_movie'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_movie'] = this.nameMovie;
    data['details_movie'] = this.detailsMovie;
    data['price_movie'] = this.priceMovie;
    data['time_movie'] = this.timeMovie;
    return data;
  }
}

