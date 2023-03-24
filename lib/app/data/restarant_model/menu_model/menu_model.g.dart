// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuModel _$$_MenuModelFromJson(Map<String, dynamic> json) => _$_MenuModel(
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      isActive: json['isActive'] as bool?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as String?,
      type: json['type'] as String?,
      image: json['image'] as String?,
      openingTime: json['openingTime'] as String?,
      closingTime: json['closingTime'] as String?,
      ratingCount: json['ratingCount'] as int?,
      time: json['time'] as int?,
      id: json['id'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      orderedQuantity: json['orderedQuantity'],
    );

Map<String, dynamic> _$$_MenuModelToJson(_$_MenuModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isActive': instance.isActive,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'type': instance.type,
      'image': instance.image,
      'openingTime': instance.openingTime,
      'closingTime': instance.closingTime,
      'ratingCount': instance.ratingCount,
      'time': instance.time,
      'id': instance.id,
      'rating': instance.rating,
      'orderedQuantity': instance.orderedQuantity,
    };
