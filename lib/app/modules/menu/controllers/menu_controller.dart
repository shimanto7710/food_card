import 'package:dartz/dartz.dart';
import 'package:food_card/app/data/restarant_model/restaurant_model/restarant_modela.dart';
import 'package:food_card/app/modules/menu/menu_service/menu_service.dart';
import 'package:get/get.dart';

import '../../../data/restarant_model/menu_model/menu_model.dart';
import '../../../data/restarant_model/restaurant_model/restarant_model.dart';
import '../../../utls/constant.dart';

class MenuController extends GetxController {

  RxString apiState = AppState.loading.name.obs;
  RxString errorText = "".obs;
  Rx<RestaurantModel> restaurantModel = RestaurantModel().obs;
  RxList<MenuModel> menuList =  <MenuModel>[].obs;
  RxList<MenuModel> orderedMenuList =  <MenuModel>[].obs;

  late MenuServiceInterface service;

  void updateRestaurantModel(RestaurantModel model){
    if(model.name.isNull){
      errorText.value = "Something went wrong";
      apiState.value = AppState.failed.name;
    }else{
      restaurantModel.value=model;
      menuList.value=restaurantModel.value.menuList??[];
      // menuList.value[0].orderedQuantity(10);
      apiState.value = AppState.loaded.name;
    }

  }

  @override
  void onInit() {
    service=MenuServiceFirebase();
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
    apiState.value = AppState.loading.name;
    /*final Either<ErrorModel, RestaurantModel> response =*/
    await service.getRestaurantById("1a2cd821-dc6f-4cc4-82de-c22e9e541d4d", updateRestaurantModel);



    /*response.fold((ErrorModel errorModel) {
      errorText.value = errorModel.error!;
      apiState.value = AppState.failed.name;
    }, (RestaurantModel result) {
      if(service is MenuServiceFirebase){
        // apiState.value = AppState.loading.name;
      } else if (service is MenuServiceAPI){
        restaurantModel.value = result;
        apiState.value = AppState.loaded.name;
      }
    });*/
  }

  void updateFav(MenuModel menuModel, rating) async {

    await service.updateFavoriteMenu(Constant.userId, menuModel.id??"", rating);

    /*response.fold((ErrorModel errorModel) {
      errorText.value = errorModel.error!;
      apiState.value = AppState.failed.name;
    }, (RestaurantModel result) {
      if(service is MenuServiceFirebase){
        // apiState.value = AppState.loading.name;
      } else if (service is MenuServiceAPI){
        restaurantModel.value = result;
        apiState.value = AppState.loaded.name;
      }
    });*/
  }

  // if faces any error then reload
  void onReload() async {
    _fetchMenu();
  }

  void addQuantity(int index){
    // restaurantModel.value.menuList![index]=restaurantModel.value.menuList![index].copyWith(orderedQuantity: restaurantModel.value.menuList![index].orderedQuantity!+1);
    menuList.value[index].orderedQuantity=menuList[index].orderedQuantity+1;

    menuList.refresh();

    // var a=menuList;
    // updateRestaurantModel(restaurantModel.value);
  }
  void subQuantityOrderedList(int index){
    // restaurantModel.value.menuList![index]=restaurantModel.value.menuList![index].copyWith(orderedQuantity: restaurantModel.value.menuList![index].orderedQuantity!-1);
    // menuList.value[index].orderedQuantity=10;
    if(orderedMenuList[index].orderedQuantity-1>-1){
      orderedMenuList.value[index].orderedQuantity=orderedMenuList[index].orderedQuantity-1;
      orderedMenuList.refresh();
    }
  }

  void addQuantityOrderedList(int index){
    // restaurantModel.value.menuList![index]=restaurantModel.value.menuList![index].copyWith(orderedQuantity: restaurantModel.value.menuList![index].orderedQuantity!-1);
    // menuList.value[index].orderedQuantity=10;
    orderedMenuList.value[index].orderedQuantity=orderedMenuList[index].orderedQuantity+1;
    orderedMenuList.refresh();
  }

  void setOrderedList(){
    for (int i=0;i<menuList.length;i++){
      List<MenuModel> items=[];
      if(menuList[i].orderedQuantity>0){
        items.add(menuList[i]);
      }
      orderedMenuList.value=items;
    }
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

