import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  QRViewController? qrViewController;
  Barcode? result;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  RxString qrCodeResult="".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  /*void onQRViewCreated(QRViewController controllerr) {
    qrViewController=controllerr;
    controllerr.scannedDataStream.listen((scanData) {
      qrCodeResult.value = scanData.code!;
    });
  }*/

}
