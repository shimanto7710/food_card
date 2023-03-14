import 'package:get/get.dart';

import '../../../utls/constant.dart';

class MenuController extends GetxController {

  RxString apiState = AppState.loading.name.obs;
  RxString errorText = "".obs;

  @override
  void onInit() {
    _fetchMenu();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _fetchMenu() async {
    apiState.value = AppState.loaded.name;
    /*final Either<WeatherErrorModel, WeatherModel> response =
    await service.getCurrentWeather(unit, region);

    response.fold((WeatherErrorModel errorModel) {
      errorText.value = errorModel.error!.info!;
      apiState.value = AppState.failed.name;
    }, (WeatherModel result) {
      currentWeatherModel.value = result;
      SharedPrefManager().setTemperatureUnit(
          currentWeatherModel.value.request?.unit ?? Constant.celsiusUnit);
      apiState.value = AppState.loaded.name;
    });*/
  }

  // if faces any error then reload
  void onReload() async {
    _fetchMenu();
  }

  /*void navigateToDetailPage(HomeController homeController, String region){
    Get.toNamed(
      Routes.DETAIL,
      arguments: [
        {"controller": homeController},
        {"region": region}
      ],
    );
  }*/

}
