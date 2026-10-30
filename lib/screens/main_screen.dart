import 'package:flutter/material.dart';
 import 'package:flutter_application_1/extensions/context_extention.dart';
import 'package:flutter_application_1/providers/main_screen_provider.dart';
 import 'package:flutter_application_1/screens/views/home_detailes_view.dart';
import 'package:flutter_application_1/screens/views/home_view.dart';
 import 'package:flutter_application_1/screens/widgets/drawer_design.dart';
import 'package:provider/provider.dart';
 
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>MainScreenProvider(),
      child: Consumer<MainScreenProvider>(
        builder: (BuildContext context, MainScreenProvider Provider, _) {return  Scaffold(
          drawer: DrawerDesign(),
          appBar: AppBar(
            title: Text("Home", style: TextStyle(color: context.theme.hintColor)),
            actions: [Icon(Icons.search_outlined, size: 24)],
          ),
          body: Provider.categoriesEnum==null?HomeView() :HomeDetailesView(categoriesEnum: Provider.categoriesEnum!,) //HomeView()
        
        
        );  },
        
      ),
    );
  }
}
