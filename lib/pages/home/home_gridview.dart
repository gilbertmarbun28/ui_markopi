import 'package:flutter/material.dart';
import 'package:markopi/helpers/custom_widget.dart';
import 'package:markopi/helpers/style.dart';
import 'package:markopi/route.dart';

class HomeBodyGridView extends StatefulWidget {
  @override
  _HomeBodyGridViewState createState() => _HomeBodyGridViewState();
}

class _HomeBodyGridViewState extends State<HomeBodyGridView> {
  List _menus = ["budidaya","panen","pasca panen","penjualan","minuman","kedai kopi"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15.0,
          childAspectRatio: 1.0),
      padding: EdgeInsets.all(25.0),
      itemCount: _menus.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Material(
          color: Color(0xFFD4ECFF),
          borderRadius: BorderRadius.circular(10),
          elevation: 0.1,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              if(index==3){
                Navigator.pushNamed(context, AppRoute.TRADE_ROUTE);
              }
            },
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icon/${index + 1}.png"),
                  CustomWidget.emptyVSpace(10.0),
                  Text(_menus[index],style: Style18GreyDark,),

                ]),
          ),
        );
      },
    );
  }
}
