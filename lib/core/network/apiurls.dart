class ApiUrl {
  static const String baseurl = "http://192.168.18.99:5500";
  // 192.168.18.99
  // static const String baseurl ='http://10.0.2.2:8000';
  // http://localhost:5500/api/movies/get-all-movies
  static const String loginurl = "$baseurl/api/users/login";
  static const String homeurl="$baseurl/api/movies/get-alxl-movies";
  static const String registerurl = "$baseurl/api/users/register";
}
