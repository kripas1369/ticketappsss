

class Movie {
  bool? success;
  String? message;
  List<Data>? data;

  Movie({this.success, this.message, this.data});

  Movie.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? title;
  String? description;
  int? duration;
  String? genre;
  String? language;
  String? releaseDate;
  String? poster;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data({
    this.sId,
    this.title,
    this.description,
    this.duration,
    this.genre,
    this.language,
    this.releaseDate,
    this.poster,
    this.createdAt,
    this.updatedAt,
    this.iV,
  });

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    duration = json['duration'];
    genre = json['genre'];
    language = json['language'];
    releaseDate = json['releaseDate'];
    poster = json['poster'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['description'] = description;
    data['duration'] = duration;
    data['genre'] = genre;
    data['language'] = language;
    data['releaseDate'] = releaseDate;
    data['poster'] = poster;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}