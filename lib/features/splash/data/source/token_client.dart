import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bindings/env.dart';

part 'token_client.g.dart';

@RestApi(baseUrl: Env.baseUrl)
abstract class TokenClient {
  factory TokenClient(Dio dio, {String? baseUrl}) = _TokenClient;

  @GET("")
  Future<String> fetchApiKey({@CancelRequest() CancelToken? cancelToken});

  @GET("{jsFilePath}")
  Future<String> fetchToken(
    @Path("jsFilePath") String jsFilePath, {
    @CancelRequest() CancelToken? cancelToken,
  });
}
