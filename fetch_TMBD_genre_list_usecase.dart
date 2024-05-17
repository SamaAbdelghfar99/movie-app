
import '../../Features/home/Model/movie_repository.dart';
import '../../Features/movieDetails/model/genre.dart';

class GetGenreListUsecase {
  final IMovieRepository movieRepository;

  GetGenreListUsecase(this.movieRepository);

  Future<List<GenreEntity>> call() async {
    return await movieRepository.fetchTMBDGenreList();
  }
}