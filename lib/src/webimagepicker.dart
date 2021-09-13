import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:typed_data';

import 'package:get/get.dart';

class WebImagePickerController extends GetxController {
  File? file;
  Uint8List? image;
  RxBool isSelected = false.obs;

  void getImage() {
    FileUploadInputElement uploadInput = FileUploadInputElement()
      ..accept = 'image/*';
    uploadInput.click();

    uploadInput.onChange.listen((event) {
      file = uploadInput.files!.first;
      final reader = FileReader();
      reader.readAsDataUrl(file!);

      reader.onLoadEnd.listen((event) {
        Uint8List data =
       const Base64Decoder().convert(reader.result.toString().split(",").last);
        image = data;
        isSelected(true);
      });
    });
  }
}