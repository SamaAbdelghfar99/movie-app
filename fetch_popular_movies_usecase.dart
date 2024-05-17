
import '../../Features/home/Model/movie.dart';
import '../../Features/home/Model/movie_repository.dart';

class GetPopularMoviesUsecase {
  final IMovieRepository movieRepository;

  GetPopularMoviesUsecase(this.movieRepository);

  Future<List<MovieEntity>> call(int pageNo) async {
    return await movieRepository.fetchPopularMovies(pageNo);
  }
}
