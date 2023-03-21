import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:food_card/app/data/restarant_model/menu_model/menu_model.dart';

import '../../../data/restarant_model/error/error_model.dart';
import '../../../data/restarant_model/restarant_model.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class MenuServiceInterface {
  Future<Either<ErrorModel, RestaurantModel>> getRestaurantById(
      String userId, Function(RestaurantModel) callBack);
}

final databaseReference = FirebaseDatabase.instance.reference();

class MenuServiceAPI implements MenuServiceInterface {
  @override
  Future<Either<ErrorModel, RestaurantModel>> getRestaurantById(
      String userId, Function(RestaurantModel) callBack) {
    throw UnimplementedError();
  }
}

class MenuServiceFirebase implements MenuServiceInterface {
  @override
  Future<Either<ErrorModel, RestaurantModel>> getRestaurantById(
      String userId, Function(RestaurantModel) callBack) async {
    await read(userId: userId, callBack: callBack);
    try {
      late RestaurantModel responseModel = const RestaurantModel();


      try{
        final allUsersDb = FirebaseDatabase.instance.ref(userId);
        allUsersDb.onValue.listen((event) {

          if (event.snapshot.exists) {
            final restaurantMap = Map<dynamic, dynamic>.from(
                event.snapshot.value as Map<dynamic, dynamic>);
            // var restaurantValue = restaurantMap.values;

            var menu = restaurantMap["menu"];
            final menuMap =
            Map<dynamic, dynamic>.from(menu as Map<dynamic, dynamic>);
            var menuValue = menuMap.values;
            List<MenuModel> menuList = [];
            menuValue.forEach((element) {
              final menuMapaaa =
              Map<dynamic, dynamic>.from(element as Map<dynamic, dynamic>);
              final MenuModel menuModel = MenuModel(
                  updatedAt: menuMapaaa["updatedAt"],
                  openingTime: menuMapaaa["opening_time"],
                  isActive: menuMapaaa["is_active"],
                  image: menuMapaaa["image"],
                  closingTime: menuMapaaa["closing_time"],
                  name: menuMapaaa["name"],
                  createdAt: menuMapaaa["createdAt"],
                  type: menuMapaaa["type"],
                  price: menuMapaaa["price"],
                  time: menuMapaaa["time"],
                  rating: menuMapaaa["rating"],
                  orderedQuantity: 0,
                  quantity: menuMapaaa["quantity"]);
              menuList.add(menuModel);
            });

            responseModel = RestaurantModel(
              createdAt: restaurantMap["createdAt"],
              name: restaurantMap["name"],
              closingTime: restaurantMap["closing_time"],
              email: restaurantMap["email"],
              id: restaurantMap["_id"],
              image: restaurantMap["image"],
              isActive: restaurantMap["is_active"],
              menuList: menuList,
              openingTime: restaurantMap["opening_time"],
              password: restaurantMap["password"],
              phoneNumber: restaurantMap["phone_number"],
              qrCode: restaurantMap["qr_code"],
              updatedAt: restaurantMap["updatedAt"],
            );

            callBack.call(responseModel);

          }else{
            var a="";
            var b=a;
          }

        });
      }catch(e){
        var a=e;
        var b=a;
      }
      return Right<ErrorModel, RestaurantModel>(responseModel);
      /* else {
        var errorModel = const ErrorModel(code: 500, error: "");
        return Left<ErrorModel, RestaurantModel>(errorModel);
      }*/
    } catch (e) {
      var errorModel = const ErrorModel(code: 500, error: "");
      return Left<ErrorModel, RestaurantModel>(errorModel);
    }
  }

   Future read({required String userId, required Function(RestaurantModel) callBack}) async {
    try {
      DatabaseReference databaseReference = FirebaseDatabase.instance.ref(userId);
      late RestaurantModel responseModel = const RestaurantModel();
      final snapshot = await databaseReference.get();
      if (snapshot.exists) {
        Map<String, dynamic> restaurantMap =
        Map<String, dynamic>.from(snapshot.value as Map);

        var menu = restaurantMap["menu"];
        final menuMap =
        Map<dynamic, dynamic>.from(menu as Map<dynamic, dynamic>);
        var menuValue = menuMap.values;
        List<MenuModel> menuList = [];
        menuValue.forEach((element) {
          final menuMapaaa =
          Map<dynamic, dynamic>.from(element as Map<dynamic, dynamic>);
          final MenuModel menuModel = MenuModel(
              updatedAt: menuMapaaa["updatedAt"],
              openingTime: menuMapaaa["opening_time"],
              isActive: menuMapaaa["is_active"],
              image: menuMapaaa["image"],
              closingTime: menuMapaaa["closing_time"],
              name: menuMapaaa["name"],
              createdAt: menuMapaaa["createdAt"],
              type: menuMapaaa["type"],
              price: menuMapaaa["price"],
              time: menuMapaaa["time"],
              rating: menuMapaaa["rating"],
              orderedQuantity: 0,
              quantity: menuMapaaa["quantity"]);
          menuList.add(menuModel);
        });

        responseModel = RestaurantModel(
          createdAt: restaurantMap["createdAt"],
          name: restaurantMap["name"],
          closingTime: restaurantMap["closing_time"],
          email: restaurantMap["email"],
          id: restaurantMap["_id"],
          image: restaurantMap["image"],
          isActive: restaurantMap["is_active"],
          menuList: menuList,
          openingTime: restaurantMap["opening_time"],
          password: restaurantMap["password"],
          phoneNumber: restaurantMap["phone_number"],
          qrCode: restaurantMap["qr_code"],
          updatedAt: restaurantMap["updatedAt"],
        );

        callBack.call(responseModel);
      } else {
        return ;
      }
    } catch (e) {
      rethrow;
    }
  }

}


/*class RealtimeDatabase {
  static void write({
    required String userId,
    required Map<String, dynamic> data,
  }) async {
    try {
      DatabaseReference databaseReference =
          FirebaseDatabase.instance.ref(userId);
      // FirebaseDatabase.instance.ref("users/$userId");

      await databaseReference.set(data);
    } catch (e) {
      rethrow;
    }
  }
}*/
