import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mvc_exercise/view/number_view.dart';

void main() {
  runApp(const GetMaterialApp(
    title: "Flutter Demo",
    home: NumberView(),
  ));
}
