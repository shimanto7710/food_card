
import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';
part 'success.g.dart';

@freezed
class SuccessModel with _$SuccessModel {
  const factory SuccessModel({
  String? success,
  int? code,
  }) = _SuccessModel;



  factory SuccessModel.fromJson(Map<String, dynamic> json) =>
      _$SuccessModelFromJson(json);
}