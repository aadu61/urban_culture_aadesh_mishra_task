

import 'package:get/get.dart';

import 'fire_base_store_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<FireBaseStoreController>(FireBaseStoreController(), permanent: true);

  }
}
