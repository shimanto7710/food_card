import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:food_card/app/data/restarant_model/menu_model/menu_model.dart';
import 'package:food_card/app/data/restarant_model/success/success.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../../data/error/error_model.dart';
import '../../../data/restarant_model/restaurant_model/restarant_model.dart';
import '../../../data/restarant_model/restaurant_model/restarant_modela.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class MenuServiceInterface {
  Future<Either<ErrorModel, RestaurantModel>> getRestaurantById(
      String userId, Function(RestaurantModel) callBack);

  Future<Either<ErrorModel, SuccessModel>> updateFavoriteMenu(
      String userId, String menuId, double rating);
}

// final databaseReference = FirebaseDatabase.instance.reference();

class MenuServiceAPI implements MenuServiceInterface {
  @override
  Future<Either<ErrorModel, RestaurantModel>> getRestaurantById(
      String userId, Function(RestaurantModel) callBack) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, SuccessModel>> updateFavoriteMenu(
      String userId, String menuId, double rating) {
    // TODO: implement updateFavoriteMenu
    throw UnimplementedError();
  }
}

class MenuServiceFirebase implements MenuServiceInterface {
  @override
  Future<Either<ErrorModel, RestaurantModel>> getRestaurantById(
      String userId, Function(RestaurantModel) callBack) async {
    late RestaurantModel responseModel = RestaurantModel();
    // await read(userId: userId, callBack: callBack);
    final bool isConnected = await InternetConnectionChecker().hasConnection;
    if (!isConnected) {
      callBack.call(responseModel);
      var errorModel = const ErrorModel(code: 500, error: "");
      return Left<ErrorModel, RestaurantModel>(errorModel);
    }
    try {
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
          try {
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
                  id: menuMapaaa["id"],
                  time: menuMapaaa["time"],
                  rating: menuMapaaa["rating"],
                  ratingCount: menuMapaaa["rating_count"],
                  orderedQuantity: 0,
                  quantity: menuMapaaa["quantity"]);
              menuList.add(menuModel);
            });
          } catch (e) {
            print(e);
          }
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
          callBack.call(responseModel);
        }
      });

      return Right<ErrorModel, RestaurantModel>(responseModel);
    } catch (e) {
      var errorModel = const ErrorModel(code: 500, error: "");
      return Left<ErrorModel, RestaurantModel>(errorModel);
    }
  }

  @override
  Future<Either<ErrorModel, SuccessModel>> updateFavoriteMenu(
      String userId, String menuId, double rating) async {
    final bool isConnected = await InternetConnectionChecker().hasConnection;
    if (!isConnected) {
      var errorModel = const ErrorModel(code: 500, error: "");
      return Left<ErrorModel, SuccessModel>(errorModel);
    }

    final dbReference =
        FirebaseDatabase.instance.ref(userId).child("menu").child(menuId);

    final snapshot = await dbReference.get();

    if (snapshot.exists) {
      Map<String, dynamic> map =
          Map<String, dynamic>.from(snapshot.value as Map);

      var ratingT = map["rating"];
      var rating_count = map["rating_count"];
      print(ratingT);
      print(rating_count);

      var finalRating = (rating + ratingT) / (rating_count + 1);
      dbReference.update({
        "rating": (rating + ratingT).toDouble(),
        "rating_count": (rating_count + 1).toDouble()
      });
    }

    SuccessModel successModel =
        const SuccessModel(code: 200, success: "Updated successfully");
    return Right<ErrorModel, SuccessModel>(successModel);
  }

/*Future read({required String userId, required Function(RestaurantModel) callBack}) async {
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
  }*/

}
