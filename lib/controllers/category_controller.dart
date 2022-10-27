import 'dart:convert';
import 'package:get/get.dart';
import 'package:food_ui/models/category_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class CategoryController extends GetxController {
  var categoryList = <Category>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await fetchCategoryList();
  }

  Future<void> fetchCategoryList() async {
    String json = await rootBundle.loadString('assets/data/category_data.json');
    var parsed = jsonDecode(json).cast<Map<String, dynamic>>();

    categoryList.assignAll(
        parsed.map<Category>((json) => Category.fromJson(json)).toList());
  }
}
