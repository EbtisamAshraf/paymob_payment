import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:paymob_payment/core/utils/colors_app.dart';



class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({Key? key,  this.size = 40.0}) : super(key: key);
final double size ;
  @override
  Widget build(BuildContext context) {
    return    SpinKitThreeInOut(
      color: ColorsApp.primaryColor,
      size: size,

    );

  }
}