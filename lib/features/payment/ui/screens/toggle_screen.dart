import 'package:flutter/material.dart';
import 'package:paymob_payment/core/utils/constants.dart';
import 'package:paymob_payment/core/utils/styles_manager.dart';
import 'package:paymob_payment/features/payment/ui/widgets/payment_card.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:    Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Choose the payment method',style: TextStylesManager.semiBoldStyle(fontSize: 22),),
             const SizedBox(height: 40,),
             Expanded(
               child: ListView.builder(
                 itemCount: paymentCardList.length,
                 itemBuilder: (BuildContext context, int index) {
                 return   Padding(
                   padding: const EdgeInsets.symmetric(vertical: 20.0),
                   child: PaymentCard(paymentCardModel: paymentCardList[index],index: index,),
                 );

                 },),
             ),
          ],
        ),
      ),
    );
  }
}


