import 'package:flutter/foundation.dart';
import 'package:mvvm/data/response/api_response.dart';
import 'package:mvvm/model/movie_list_model.dart';
import 'package:mvvm/repository/home_repository.dart';

class HomeViewModel with ChangeNotifier {
  
  final _homeRepository = HomeRepository();

  ApiResponse<MovieListModel> moviesList = ApiResponse.loading();

  void setMoviesList(ApiResponse<MovieListModel> response) {
    moviesList = response;
    notifyListeners();
  }


  Future<void> fetchMoviesListApi() async {

    setMoviesList(ApiResponse.loading());
    _homeRepository.fetchMoviesList().then((value) {
      setMoviesList(ApiResponse.completed(value));
      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      setMoviesList(ApiResponse.error(error.toString()));
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
