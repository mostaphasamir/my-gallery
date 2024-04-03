import 'dart:convert';
import 'dart:io';

class FileHelper {
  static String getBase64FormatFile(File file) {
    List<int> fileInByte = file.readAsBytesSync();
    String fileInBase64 = base64Encode(fileInByte);
    return fileInBase64;
  }

  static String getFileName(File file) {
    print(file.path.split("/").last);
    return file.path.split("/").last;
  }
}
