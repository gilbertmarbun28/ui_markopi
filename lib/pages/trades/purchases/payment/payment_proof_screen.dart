import 'package:flutter/material.dart';
import 'package:markopi/helpers/helper.dart';
import 'package:markopi/route.dart';
import 'package:markopi/widgets/molecules/button_mol.dart';
import 'package:markopi/widgets/organisms/app_bar_org.dart';

class PaymentProofScreen extends StatefulWidget {
  @override
  _PaymentProofScreenState createState() => _PaymentProofScreenState();
}

class _PaymentProofScreenState extends State<PaymentProofScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrgAppBar(context).appBar(
          title: "Bukti Pembayaran",
          blueMode: false,
          elevation: 0,

      ),
      body: Center(
        child: Container(
          height: 50,
          child: MolButton(context).blueButton(
              onPressed: (){},
              child: Text(
                "Upload Gambar",
                style: Style14WhiteBold,
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          height: 50,
          width: double.maxFinite,
          child: MolButton(context).blueButton(
              onPressed: ()=>Navigator.pushNamed(context,AppRoute.PURCHASE_UPLOADED_PROOF_ROUTE),
              child: Text("Konfirmasi",style: Style14WhiteBold,)),
        ),
      ),
    );
  }
}
