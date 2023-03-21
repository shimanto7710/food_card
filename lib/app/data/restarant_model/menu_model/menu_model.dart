import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';

part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {

  const MenuModel._();

  factory MenuModel({
    String? createdAt,
    String? updatedAt,
    @Key("is_active") bool? isActive,
    String? name,
    int? price,
    String? quantity,
    String? type,
    String? image,
    @Key("opening_time") String? openingTime,
    @Key("closing_time") String? closingTime,
    int? time,
    double? rating,
    orderedQuantity,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);


}
