
import '../../Features/home/Model/movie_repository.dart';
import '../../Features/movieDetails/model/cast.dart';

class GetMovieCastUsecase {
  final IMovieRepository movieRepository;

  GetMovieCastUsecase(this.movieRepository);

  Future<List<CastEntity>> call(int movieId) async {
    return await movieRepository.fetchMovieCast(movieId);
  }
}