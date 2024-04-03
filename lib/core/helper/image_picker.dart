import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagePickerHelper {
  static  final ImagePicker _picker=ImagePicker();

  static Future<File?> pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    return image != null ? File(image.path) : null;
  }

  static Future<List<File>> pickMultiImage() async {

    
    final List<XFile> images = await _picker.pickMultiImage();
    return images.map<File>((e) => File(e.path)).toList();
  }
}
