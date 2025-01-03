import 'package:dartz/dartz.dart';
import '../../../core/connection/network_info.dart';
import '../../../core/error/failures.dart';
import '../domain/news_entity.dart';
import '../domain/news_repo.dart';
import 'news_local_datasource.dart';
import 'news_remote_datasource.dart';

class NewsRepoImpl implements NewsRepo {
  final NewsRemoteDatasource newsRemoteDatasource;
  final NewsLocalDatasource newsLocalDatasource;
  final NetworkInfo networkInfo;

  NewsRepoImpl({
    required this.newsRemoteDatasource,
    required this.newsLocalDatasource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<NewsEntity>>> getCountryNews(String country, String category) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteNews = await newsRemoteDatasource.getCountryNews(country, category);
        newsLocalDatasource.cacheNews(remoteNews);
        return Right(remoteNews);
      } catch (e) {
        return Left(ServerFailure('Error'));
      }
    } else {
      try {
        final localNews = await newsLocalDatasource.getLastNews();
        return Right(localNews); // return cached list of news
      } catch (e) {
        return Left(CacheFailure('Error'));
      }
    }
  }

  @override
  Future<Either<Failure, List<NewsEntity>>> getQueryNews(String query) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteNews = await newsRemoteDatasource.getQueryNews(query);
        newsLocalDatasource.cacheNews(remoteNews);
        return Right(remoteNews);
      } catch (e) {
        return Left(ServerFailure('Error'));
      }
    } else {
      try {
        final localNews = await newsLocalDatasource.getLastNews();
        return Right(localNews); // return cached list of news
      } catch (e) {
        return Left(CacheFailure('Error'));
      }
    }
  }
}
