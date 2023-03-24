
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../menu_model/menu_model.dart';

part 'restarant_model.freezed.dart';
part 'restarant_model.g.dart';

@unfreezed
class RestaurantModel with _$RestaurantModel {
  factory RestaurantModel({
    String? createdAt,
    String? updatedAt,
    @Key("is_active") bool? isActive,
    String? id,
    String? name,
    String? email,
    String? password,
    @Key("phone_number") String? phoneNumber,
    String? image,
    @Key("qr_code") String? qrCode,
    @Key("opening_time") String? openingTime,
    @Key("closing_time") String? closingTime,
    List<MenuModel>? menuList,
    List<MenuModel>? orderedList,
  }) = _RestaurantModel;


  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}