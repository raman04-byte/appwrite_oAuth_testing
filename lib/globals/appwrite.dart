import 'dart:typed_data';

import 'package:appwrite/appwrite.dart';

class Appwrite {
  static const String endpoint = 'http://54.242.44.19/v1';
  static const String projectId = '65f31e0dee7417a5dc36';

  Appwrite._();

  static final client = Client()
    ..setEndpoint(endpoint)
    ..setProject(projectId);

  static final account = Account(client);
  static final storage = Storage(client);
  static final databases = Databases(client);
  static final realtime = Realtime(client);

  static Future<void> uploadImage(
      String bucketId, String fileId, String fileName, Uint8List bytes) async {
    final inputFile = InputFile.fromBytes(
      bytes: bytes,
      filename: fileName,
      contentType: "image/jpeg",
    );
    try {
      await storage.createFile(
        file: inputFile,
        fileId: fileId,
        bucketId: bucketId,
      );
    } catch (e) {
      if (e.toString().contains("file_already_exists")) {
        await storage.deleteFile(fileId: fileId, bucketId: bucketId);
        await storage.createFile(
          file: inputFile,
          fileId: fileId,
          bucketId: bucketId,
        );
      }
    }
  }
}
