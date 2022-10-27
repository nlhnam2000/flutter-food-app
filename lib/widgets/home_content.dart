import 'package:flutter/material.dart';
import 'package:food_ui/widgets/category_view.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CategoryListView(),
      ],
    );
  }
}
