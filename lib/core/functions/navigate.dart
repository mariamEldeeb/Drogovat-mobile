import 'package:get/get.dart';
import 'package:flutter/material.dart';

void navigateTo(Widget page) {
  Get.to(
    page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}

// navigateTo(Widget Function() page){
//   Get.to(
//       () => page,
//     duration: const Duration(milliseconds: 300),
//     transition: Transition.fade,
//   );
// }

navigateOffTo(Widget page) {
  Get.off(
    () => page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}

navigateOffAllTo(Widget page) {
  Get.offAll(
    page,
    duration: const Duration(milliseconds: 300),
    transition: Transition.fade,
  );
}
