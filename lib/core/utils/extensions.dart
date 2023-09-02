import 'package:flutter/material.dart';

extension ResponsiveWidget on Widget {
  responsiveText(){
    return Builder(builder: (BuildContext context) {
      if(MediaQuery.of(context).size.width.toInt() >= 700){
        return MediaQuery(data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1.5,
        ),
            child: this );
      }
      else {
        return this;
      }
    },);
  }

}

