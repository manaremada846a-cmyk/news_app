import 'package:flutter/material.dart';
import 'package:flutter_application_1/extensions/context_extention.dart';
import 'package:flutter_application_1/models/detailes_card_model.dart';
import 'package:flutter_application_1/screens/widgets/detailes_card.dart';

class HomeDetailesView extends StatelessWidget {
  const HomeDetailesView({super.key});
  //dafaulttabbar//column//tabbar//tabbarview
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            TabBar(
              isScrollable: false,
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

              tabs: [
                Tab(child: Text("ABC News")),
                Tab(child: Text("ABC News")),
                Tab(child: Text("ABC News")),
                Tab(child: Text("ABC News")),
                Tab(child: Text("ABC News")),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                tadcards([DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),
                          DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),
                          DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),
                          DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),
                          DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),
                          DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),
                          DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),
                          
                          ])
                 ,   tadcards([DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),]),
                  ColoredBox(color: Colors.redAccent),
                   tadcards([DetailesCardModel(  id: "id",
                          imageUrl: "https://tse2.mm.bing.net/th/id/OIP.qQkBQH7xkJs-088IYfrpbQHaFQ?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                          auther: "auther",
                          title: "40-year-old man falls 200 feet to his death while canyoneering at national park",
                          publishedAt: "publishedAt",),]),
                  ColoredBox(color: Colors.yellowAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
  }Widget tadcards(List <DetailesCardModel> Usercard){
    return   ListView.builder(
                    itemCount:Usercard.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DetailesCard(
                        detailesCardModel:  Usercard[index]
                      );
                    },
                  );
  }
}
