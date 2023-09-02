

import 'package:flutter/material.dart';
import 'package:paymob_payment/core/utils/images_app.dart';

class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork({Key? key,required this.image ,this.fit}) : super(key: key);
  final String image;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return image.isNotEmpty ? FadeInImage.assetNetwork(
      placeholder:ImagesApp.noImage,
      image: image , fit: fit,): Image.asset(ImagesApp.noImage);
  }
}