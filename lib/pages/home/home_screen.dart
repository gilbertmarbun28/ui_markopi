

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markopi/helpers/helper.dart';
import 'package:markopi/widgets/organisms/drawer_org.dart';
import 'package:markopi/widgets/widgets.dart';

import 'home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark.copyWith(systemNavigationBarColor:CustomColor.darkBlueColor,statusBarColor:CustomColor.darkBlueColor),
      child: Scaffold(
        key: _scaffoldState,
        appBar:OrgAppBar(context).appBar(
            title: "Markopi",
            hasDrawer: true,
            onPressedDrawer:()=>_scaffoldState.currentState.openDrawer()
        ),
        drawer: OrgDrawer(context).drawer(),
        drawerEdgeDragWidth: 0,
        body: Container(
          child: HomeBodyGridView(),
        ),
      ),
    );
  }


}

