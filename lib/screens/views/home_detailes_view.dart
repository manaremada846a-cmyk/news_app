import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/categories_enum.dart';
import 'package:flutter_application_1/extensions/context_extention.dart';
import 'package:flutter_application_1/models/detailes_card_model.dart';
import 'package:flutter_application_1/providers/main_screen_provider.dart';
import 'package:flutter_application_1/screens/widgets/detailes_card.dart';
import 'package:flutter_application_1/services/network_services.dart';
import 'package:provider/provider.dart';

class HomeDetailesView extends StatefulWidget {
  const HomeDetailesView({super.key, required CategoriesEnum categoriesEnum });
   @override
  State<HomeDetailesView> createState() => _HomeDetailesViewState();
}

class _HomeDetailesViewState extends State<HomeDetailesView> {
  //dafaulttabbar//column//tabbar//tabbarview

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_)=>
   Provider.of<MainScreenProvider>(context,listen: false).getSources());
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, MainScreenProvider provider, Widget? child) {
        if(provider.isSourcesLoading){
          return Center(child: CircularProgressIndicator());
        }
        if((provider.sources??[]).isNotEmpty){return
      DefaultTabController(
          length: provider.sources!.length,
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: context.theme.hintColor,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: context.theme.hintColor,
                ),
                indicatorColor: context.theme.hintColor,
                dividerHeight: 0,
                indicatorSize: TabBarIndicatorSize.tab,
      
                tabs: provider.sources!.map((e) => Tab(text: e.name??'',),).toList(),
              ),
              Expanded(
                child: TabBarView(
  children: List.generate(
    provider.sources!.length,
    (index) => tadcards([]),
  ),
),
              ),
            ],
          ),
        );}return Text("no data founded!!!!");
        
    }  );
    
  }

  Widget tadcards(List<DetailesCardModel> Usercard) {
    return ListView.builder(
      itemCount: Usercard.length,
      itemBuilder: (BuildContext context, int index) {
        return DetailesCard(detailesCardModel: Usercard[index]);
      },
    );
  }
}
