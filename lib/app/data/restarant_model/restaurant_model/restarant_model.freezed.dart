// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restarant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) {
  return _RestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantModel {
  String? get createdAt => throw _privateConstructorUsedError;
  set createdAt(String? value) => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(String? value) => throw _privateConstructorUsedError;
  @Key("is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @Key("is_active")
  set isActive(bool? value) => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  set password(String? value) => throw _privateConstructorUsedError;
  @Key("phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @Key("phone_number")
  set phoneNumber(String? value) => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  set image(String? value) => throw _privateConstructorUsedError;
  @Key("qr_code")
  String? get qrCode => throw _privateConstructorUsedError;
  @Key("qr_code")
  set qrCode(String? value) => throw _privateConstructorUsedError;
  @Key("opening_time")
  String? get openingTime => throw _privateConstructorUsedError;
  @Key("opening_time")
  set openingTime(String? value) => throw _privateConstructorUsedError;
  @Key("closing_time")
  String? get closingTime => throw _privateConstructorUsedError;
  @Key("closing_time")
  set closingTime(String? value) => throw _privateConstructorUsedError;
  List<MenuModel>? get menuList => throw _privateConstructorUsedError;
  set menuList(List<MenuModel>? value) => throw _privateConstructorUsedError;
  List<MenuModel>? get orderedList => throw _privateConstructorUsedError;
  set orderedList(List<MenuModel>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantModelCopyWith<RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantModelCopyWith<$Res> {
  factory $RestaurantModelCopyWith(
          RestaurantModel value, $Res Function(RestaurantModel) then) =
      _$RestaurantModelCopyWithImpl<$Res, RestaurantModel>;
  @useResult
  $Res call(
      {String? createdAt,
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
      List<MenuModel>? orderedList});
}

/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res, $Val extends RestaurantModel>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phoneNumber = freezed,
    Object? image = freezed,
    Object? qrCode = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
    Object? menuList = freezed,
    Object? orderedList = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      openingTime: freezed == openingTime
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closingTime: freezed == closingTime
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      menuList: freezed == menuList
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>?,
      orderedList: freezed == orderedList
          ? _value.orderedList
          : orderedList // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantModelCopyWith<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  factory _$$_RestaurantModelCopyWith(
          _$_RestaurantModel value, $Res Function(_$_RestaurantModel) then) =
      __$$_RestaurantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? createdAt,
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
      List<MenuModel>? orderedList});
}

/// @nodoc
class __$$_RestaurantModelCopyWithImpl<$Res>
    extends _$RestaurantModelCopyWithImpl<$Res, _$_RestaurantModel>
    implements _$$_RestaurantModelCopyWith<$Res> {
  __$$_RestaurantModelCopyWithImpl(
      _$_RestaurantModel _value, $Res Function(_$_RestaurantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phoneNumber = freezed,
    Object? image = freezed,
    Object? qrCode = freezed,
    Object? openingTime = freezed,
    Object? closingTime = freezed,
    Object? menuList = freezed,
    Object? orderedList = freezed,
  }) {
    return _then(_$_RestaurantModel(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      openingTime: freezed == openingTime
          ? _value.openingTime
          : openingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closingTime: freezed == closingTime
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      menuList: freezed == menuList
          ? _value.menuList
          : menuList // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>?,
      orderedList: freezed == orderedList
          ? _value.orderedList
          : orderedList // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantModel implements _RestaurantModel {
  _$_RestaurantModel(
      {this.createdAt,
      this.updatedAt,
      @Key("is_active") this.isActive,
      this.id,
      this.name,
      this.email,
      this.password,
      @Key("phone_number") this.phoneNumber,
      this.image,
      @Key("qr_code") this.qrCode,
      @Key("opening_time") this.openingTime,
      @Key("closing_time") this.closingTime,
      this.menuList,
      this.orderedList});

  factory _$_RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantModelFromJson(json);

  @override
  String? createdAt;
  @override
  String? updatedAt;
  @override
  @Key("is_active")
  bool? isActive;
  @override
  String? id;
  @override
  String? name;
  @override
  String? email;
  @override
  String? password;
  @override
  @Key("phone_number")
  String? phoneNumber;
  @override
  String? image;
  @override
  @Key("qr_code")
  String? qrCode;
  @override
  @Key("opening_time")
  String? openingTime;
  @override
  @Key("closing_time")
  String? closingTime;
  @override
  List<MenuModel>? menuList;
  @override
  List<MenuModel>? orderedList;

  @override
  String toString() {
    return 'RestaurantModel(createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive, id: $id, name: $name, email: $email, password: $password, phoneNumber: $phoneNumber, image: $image, qrCode: $qrCode, openingTime: $openingTime, closingTime: $closingTime, menuList: $menuList, orderedList: $orderedList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantModelCopyWith<_$_RestaurantModel> get copyWith =>
      __$$_RestaurantModelCopyWithImpl<_$_RestaurantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantModelToJson(
      this,
    );
  }
}

abstract class _RestaurantModel implements RestaurantModel {
  factory _RestaurantModel(
      {String? createdAt,
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
      List<MenuModel>? orderedList}) = _$_RestaurantModel;

  factory _RestaurantModel.fromJson(Map<String, dynamic> json) =
      _$_RestaurantModel.fromJson;

  @override
  String? get createdAt;
  set createdAt(String? value);
  @override
  String? get updatedAt;
  set updatedAt(String? value);
  @override
  @Key("is_active")
  bool? get isActive;
  @Key("is_active")
  set isActive(bool? value);
  @override
  String? get id;
  set id(String? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get email;
  set email(String? value);
  @override
  String? get password;
  set password(String? value);
  @override
  @Key("phone_number")
  String? get phoneNumber;
  @Key("phone_number")
  set phoneNumber(String? value);
  @override
  String? get image;
  set image(String? value);
  @override
  @Key("qr_code")
  String? get qrCode;
  @Key("qr_code")
  set qrCode(String? value);
  @override
  @Key("opening_time")
  String? get openingTime;
  @Key("opening_time")
  set openingTime(String? value);
  @override
  @Key("closing_time")
  String? get closingTime;
  @Key("closing_time")
  set closingTime(String? value);
  @override
  List<MenuModel>? get menuList;
  set menuList(List<MenuModel>? value);
  @override
  List<MenuModel>? get orderedList;
  set orderedList(List<MenuModel>? value);
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantModelCopyWith<_$_RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
