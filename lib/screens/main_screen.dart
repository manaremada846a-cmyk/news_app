import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/categories_enum.dart';
import 'package:flutter_application_1/extensions/context_extention.dart';
import 'package:flutter_application_1/extensions/widgets_extentsions.dart';
import 'package:flutter_application_1/screens/widgets/drawer_design.dart';
import 'package:flutter_application_1/screens/widgets/home_cards.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerDesign(),
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: context.theme.hintColor)),
        actions: [Icon(Icons.search_outlined, size: 24)],
      ),
      body: ListView(
        children: [
          Text(
            "Good Morning\nHere is Some News For You",
            style: context.textTheme.labelMedium,
          ).symatricPadding(vertical: 10,horizontal: 20),
          //...CategoriesEnum.values.map((e)=>HomeCards(categoriesEnum: e, iseven: false,).symatricPadding(vertical: 10,horizontal: 16),)
          ...List.generate(
            CategoriesEnum.values.length,
            (index) => HomeCards(
              categoriesEnum: CategoriesEnum.values[index],
              iseven: index % 2 ==0,
            ).symatricPadding(horizontal: 16, vertical: 7),
          ),
        ],
      ),
    );
  }
}
