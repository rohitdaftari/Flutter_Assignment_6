import 'package:flutter/material.dart';
import 'package:search_widget/search_widget.dart';
import 'package:shopping_app/items/category_list_single_item.dart';
import 'package:shopping_app/models/dummy_categories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                child: Text(
                  "Hey ! Rohit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  "Here are some Categories \nfor you to Shop the best Products",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: DUMMY_CATEGORIES
                  .map((catData) =>
                      GridSingleItem(catData.title, catData.imgUrl))
                  .toList(),
              // itemCount: DUMMY_CATEGORIES.toList().length,
              shrinkWrap: true,
            ),
          ),
        ],
      )),
    );
  }
}
