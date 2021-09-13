<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->



## Features

This package is for flutter web where sometimes image picker do not work properly. With this package you can get
the image as uint8List or file and use it for multipart upload.

## Getting started

This package uses GetXController, so in order to show any change in your ui after picking image
please use GetX.

## Usage


```dart
//create an instance

final WebImagePickerController _picker = Get.put(WebImagePickerController());

//use the _picker with tap detectors

GestureDetector(
onTap: (){
_picker.getImage();
}
child: Text("Pick Image");
)
```


