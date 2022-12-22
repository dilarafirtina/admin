import 'dart:html';

import '../utils/configuration.dart';
import 'package:mime_type/mime_type.dart';
import 'package:path/path.dart' as Path;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'dart:html' as html;

Rx<File> _cloudFile = File([], "name").obs;
var _fileBytes = [].obs;
Rx<Image> _imageWidget = Image.network(logoImage).obs;

Future<void> getMultipleImageInfos() async {
  var mediaData = await ImagePickerWeb.getImageInfo;
  String? mimeType = mime(Path.basename(mediaData!.fileName!));
  html.File mediaFile =
      new html.File(mediaData!.data!, mediaData!.fileName!, {'type': mimeType});

  if (mediaFile != null) {
    _cloudFile.value = mediaFile;
    _fileBytes.value = mediaData.data!;
    _imageWidget.value = Image.memory(mediaData.data!);
  }
}

Widget fileUploadButton(String text) {
  return ElevatedButton(
    style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
                style: BorderStyle.solid,
                color: Color.fromARGB(255, 186, 185, 185)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        foregroundColor: MaterialStateProperty.all(snowColor),
        backgroundColor: MaterialStateProperty.all(kSecondaryColor)),
    onPressed: () => getMultipleImageInfos,
    child: Row(
      children: <Widget>[
        Text(text, style: const TextStyle(fontSize: 15)),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.upload_file,
          color: Colors.grey,
          size: 20.0,
        ),
      ],
    ),
  );
}
