import 'package:flutter_clean_architecture/core/resources/data_state.dart' show DataState;
import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  // Returns a Future data of an ArticleEntity list. We wrap it with tha DataState to determine the state of the response.
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}