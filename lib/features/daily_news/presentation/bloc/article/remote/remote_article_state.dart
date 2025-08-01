import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

abstract class RemoteArticlesState extends Equatable{
  final List<ArticleEntity>? articles;
  final DioException? dioException;

  const RemoteArticlesState({this.articles, this.dioException});

  // The props getter allows comparison between state instances for equality. 
  // Note: The ! asserts these fields are non-null. This could throw errors if either is actually null.
  @override
  List<Object> get props => [articles!, dioException!];
}

class RemoteArticlesLoading extends RemoteArticlesState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState {
  const RemoteArticlesDone(List<ArticleEntity> article) : super(articles: article) ;
}

class RemoteArticlesError extends RemoteArticlesState {
  const RemoteArticlesError(DioException dioException) : super (dioException: dioException);
}