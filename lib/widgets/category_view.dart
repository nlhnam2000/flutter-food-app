import 'package:flutter/material.dart';
import 'package:food_ui/controllers/category_controller.dart';
import 'package:get/get.dart';

import '../models/category_model.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({Key? key}) : super(key: key);

  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 200,
        child: ListView.separated(
          separatorBuilder: ((context, index) => const SizedBox(
                width: 30,
              )),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoryController.categoryList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                CategoryView(category: categoryController.categoryList[index]),
              ],
            );
          },
        ),
      ),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/${category.image}'),
          const SizedBox(
            height: 7,
          ),
          Text(category.title),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(0),
              backgroundColor: Colors.red, // <-- Button color
            ),
            child: const Icon(Icons.chevron_right, color: Colors.white),
          )
        ],
      ),
    );
  }
}
