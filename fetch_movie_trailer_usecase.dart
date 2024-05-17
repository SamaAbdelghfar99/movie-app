
import '../../Features/home/Model/movie_repository.dart';
import '../../Features/movieDetails/model/trailer.dart';

class GetMovieTrailerUsecase {
  final IMovieRepository movieRepository;

  GetMovieTrailerUsecase(this.movieRepository);

  Future<List<TrailerEntity>> call(int movieId) async {
    return await movieRepository.fetchMovieTrailer(movieId);
  }
}