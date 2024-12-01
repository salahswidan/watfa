import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


import '../../features/auth/countryPicker/data/models/all_country_with_flag.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;


  // @POST(ApiConstants.register)
  // Future<SignupResponse> signup(
  //   @Body() SignupRequestBody signupRequestBody,
  // );

  @GET(ApiConstants.allCountries)
  Future<AllCountryWithFlagResponese> getAllCountries();
}
