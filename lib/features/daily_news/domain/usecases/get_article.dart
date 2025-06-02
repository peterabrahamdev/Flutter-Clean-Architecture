import 'package:flutter_clean_architecture/core/resources/data_state.dart' show DataState;
import 'package:flutter_clean_architecture/core/usecases/usecases.dart';
import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart' show ArticleEntity;
import 'package:flutter_clean_architecture/features/daily_news/domain/repository/article_repository.dart' show ArticleRepository;

class GetArticleUseCase implements UseCases<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  
  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}){
    return _articleRepository.getNewsArticles();
  }
}
