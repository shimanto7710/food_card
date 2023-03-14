import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';
import '../utls/constant.dart';

class CustomError extends StatelessWidget {
  // final FlutterErrorDetails errorDetails;
  final String summary;
  final Function onReload;

  const CustomError({
    super.key,
    required this.summary, required this.onReload,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetConstant.errorImage),
            const Text(
              Constant.errorTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 21),
            ),
            const SizedBox(height: 12),
            Text(
              summary,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontSize: 14),
            ),
            const SizedBox(height: 30,),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0)),
              height: 45,
              elevation: 0,
              color: AppColors.primaryColor,
              child: Container(
                alignment: Alignment.center,
                width: 120,
                child: const Text(
                  Constant.tryAgain,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {
                onReload();
              },
            )
          ],
        ),
      ),
    );
  }
}
