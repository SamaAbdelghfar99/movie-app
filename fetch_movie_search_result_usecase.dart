
import '../../Features/home/Model/movie.dart';
import '../../Features/home/Model/movie_repository.dart';

class GetMovieSearchResultUsecase {
  final IMovieRepository movieRepository;

  GetMovieSearchResultUsecase(this.movieRepository);

  Future<List<MovieEntity>> call(String query) async {
    return await movieRepository.fetchMovieSearchResults(query);
  }
}