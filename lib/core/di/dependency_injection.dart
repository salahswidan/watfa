import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/countryPicker/data/repo/country_picker_repo.dart';
import '../../features/auth/countryPicker/logic/cubit/get_all_countries_cubit.dart';

import '../network/api_service.dart';
import '../network/dio_factory.dart';

final getit = GetIt.instance;

Future<void> setupGetIT() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Country Picker
  getit.registerLazySingleton<CountryPickerRepo>(
      () => CountryPickerRepo(getit()));
  getit.registerFactory<GetAllCountriesCubit>(
      () => GetAllCountriesCubit(getit()));
}
