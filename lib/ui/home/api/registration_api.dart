/*
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:p2p/app/modules/onboard/signup/model/registration_model.dart';
import 'package:p2p/shared/dio/dio_helper.dart';
import 'package:p2p/shared/dio/global_dio.dart' as global;

class RegistrationApi {
  Future<Either<String, String>> registerUser(
      {required RegistrationModel model}) async {
    const String url = 'customer/register';
    final Options options =
        await DioHelper.getDefaultOptions(isCacheEnabled: false);
    try {
      final Response<dynamic> response = await global.dio.post(
        url,
        options: options,
        data: model.toJson(),
      );
      if (response.data['success'] == true) {
        return Right<String, String>(response.data['otp_verifier']);
      } else {
        return Left<String, String>(
            response.data['message'] ?? 'Something went wrong');
      }
    } catch (e) {
      return Left<String, String>(e.toString());
    }
  }
}
*/
