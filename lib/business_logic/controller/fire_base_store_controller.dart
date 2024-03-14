import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:urban_culture_aadesh_mishra_task/core/common/console.dart';

import '../../core/export_core.dart';


class FireBaseStoreController extends GetxController {
  static FireBaseStoreController get instance => Get.find();

  uploadUserProfileToFirebase(String filePath, {String? type}) async {
    DateTime date = DateTime.now();
    String filePath1 = "${date.year}_${date.month}_${date.day}";
    final pathOfTheStorage = "urban_streak/user_Id/$filePath1/${type}_$filePath1.jpg";
    final ref = FirebaseStorage.instance.ref().child(pathOfTheStorage);
    var uploadTask = ref.putFile(File(filePath));
    final snapshot = await uploadTask.whenComplete(() {});
    final downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  getFile({String? type}) async {
    DateTime date = DateTime.now();
    String filePath = "${date.year}_${date.month}_${date.day}";
    final pathOfTheStorage = "urban_streak/user_Id/$filePath/${type}_$filePath.jpg";

    var ref = FirebaseStorage.instance.ref().child(pathOfTheStorage);

    return await ref.getDownloadURL().whenComplete(() {
      Console.debug("File found");
    }).onError((error, stackTrace) {
      Console.debug("File not exist");
      return "s";
    });
  }


}
