
import '../../Features/home/Model/movie.dart';
import '../../Features/home/Model/movie_repository.dart';

class GetUpComingMoviesUsecase {
  final IMovieRepository movieRepository;

  GetUpComingMoviesUsecase(this.movieRepository);

  Future<List<MovieEntity>> call(int pageNo) async {
    return await movieRepository.fetchUpcomingMovies(pageNo);
  }
}