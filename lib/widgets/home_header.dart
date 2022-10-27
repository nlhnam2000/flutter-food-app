import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  HomeHeader({Key? key}) : super(key: key);

  final TextEditingController searchInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(height: 20),
        const Text(
          "Food",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Delivery",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: TextField(
                controller: searchInputController,
                decoration: const InputDecoration(
                  hintText: "Search",
                  isDense: true,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
