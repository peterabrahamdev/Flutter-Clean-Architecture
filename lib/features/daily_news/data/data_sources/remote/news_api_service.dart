import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constants/constants.dart';
import 'package:flutter_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';

// Retrofit generates code, therefore we need to specify the generation file.
part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseUrl)
// This class is responsible for handling all the network call methods.
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  // When calling this method we pass the three parameters to it.
  // In this abstracted method, we're basically telling the Retrofit to generate a method for us that can internally use the Dio 
  // to make a Get network call to an endpoint name '/top-headlines' with the baseUrl we provided at the top of the class. 
  // It also takes multiple query parameters as defined in the function's parameters.
  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  }) {}
}
