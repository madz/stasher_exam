import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../features/stash_points/models/stash_points_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://api-staging.stasher.com/v2")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/stashpoints")
  Future<StashPointsModel> getStashPoints(
      @Query("page") int page, @Query("per_page") int perPage);
}
