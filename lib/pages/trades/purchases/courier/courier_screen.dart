
import 'package:flutter/material.dart';
import 'package:markopi/pages/trades/purchases/courier/courier_list.dart';
import 'package:markopi/widgets/molecules/button_mol.dart';
import 'package:markopi/widgets/organisms/app_bar_org.dart';

class PurchaseCourierScreen extends StatefulWidget {
  @override
  _PurchaseCourierScreenState createState() => _PurchaseCourierScreenState();
}

class _PurchaseCourierScreenState extends State<PurchaseCourierScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrgAppBar(context).appBar(
        title: "Pengiriman",
        elevation: 0,
        blueMode: false
      ),
      body: PurchaseCourierList(),
    );
  }
}

