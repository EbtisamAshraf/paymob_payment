import 'package:flutter/material.dart';
import 'package:paymob_payment/core/utils/styles_manager.dart';
import 'package:paymob_payment/features/payment/data/models/param.dart';
import 'package:paymob_payment/features/payment/ui/cubit/payment_cubit.dart';
import 'package:paymob_payment/features/payment/ui/widgets/custom_text_form_field.dart';

class MobileWalletScreen extends StatelessWidget {
   MobileWalletScreen({super.key});

 GlobalKey<FormState> formKey =GlobalKey<FormState>();
   TextEditingController walletNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Enter Wallet number',style: TextStylesManager.semiBoldStyle(fontSize: 16),),
              const SizedBox(height: 30,),
              CustomTextFormField(
                controller: walletNumberController,
                hintText: 'Wallet number',
                icon: Icons.wallet,
                keyboardType: TextInputType.phone,
                validator: (val){
                  if(val!.isEmpty || val.length <11){
                    return 'Enter Correct Number';
                  }
                  return null;
                },),
              const SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: () async {

                    if(formKey.currentState!.validate()){
                      PaymentCubit.get(context).walletPayments(KioskPaymentsParam(source: Source(identifier: walletNumberController.text, subtype: 'WALLET'), paymentToken: PaymentCubit.get(context).finalToken));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: Text('Pay  ${PaymentCubit.get(context).priceController.text} EGP'))

            ],
          ),
        ),
      ),
    );
  }
}
