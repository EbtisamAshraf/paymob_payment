import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob_payment/core/components/custom_loading_widget.dart';
import 'package:paymob_payment/core/utils/colors_app.dart';
import 'package:paymob_payment/core/utils/constants.dart';
import 'package:paymob_payment/core/utils/media_query_values.dart';
import 'package:paymob_payment/core/utils/strings_app.dart';
import 'package:paymob_payment/core/utils/styles_manager.dart';
import 'package:paymob_payment/features/payment/data/models/param.dart';
import 'package:paymob_payment/features/payment/data/models/payment_card_model.dart';
import 'package:paymob_payment/features/payment/ui/cubit/payment_cubit.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.paymentCardModel, required this.index,  });
 final PaymentCardModel paymentCardModel;
 final int index;

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state){
        if(state is FinalTokenSucceededState && index ==PaymentCubit.get(context).index ){
          Navigator.pushNamed(context, paymentCardModel.route);
        }
      },
      builder: (context, state) {
        return Container(
          color: Colors.grey.shade300,
          height: context.height * 0.11,
          width: context.width * 0.8,
          child:  Center(
            child: ListTile (
              leading: Image.asset(paymentCardModel.image),
              title: Text(paymentCardModel.title,style: TextStylesManager.boldStyle(fontSize: 16),),
              trailing: IconButton(icon:( state is FinalTokenLoadingState ||  state is FirstTokenLoadingState || state is OrderIdLoadingState) && index ==PaymentCubit.get(context).index  ? const CustomLoadingWidget(size: 20,)  :const Icon(Icons.arrow_forward_ios,size: 20,color: ColorsApp.primaryColor,),
                onPressed: (){
                  PaymentCubit.get(context).setPaymentMethodCardCurrentIndex(index);
                  PaymentCubit.get(context).getFirstToken(StringsApp.paymobApiKey)
                      .then( (value) =>  PaymentCubit.get(context).getOrderId(
                      OrderRegistrationParam(
                        authToken:PaymentCubit.get(context).paymobFirstToken,
                        amountCents: '${(int.parse(PaymentCubit.get(context).priceController.text) * 100)}' ,
                        items: [],)))
                      .then((value) => PaymentCubit.get(context).getPaymentToken(
                      PaymentKeyParam(
                          authToken:  PaymentCubit.get(context).paymobFirstToken,
                          amountCents: '${(int.parse(PaymentCubit.get(context).priceController.text) * 100)}',
                          orderId: PaymentCubit.get(context).orderId,
                          billingData: BillingData(
                            firstName: PaymentCubit.get(context).firstNameController.text,
                            lastName: PaymentCubit.get(context).lastNameController.text,
                            email: PaymentCubit.get(context).emailController.text,
                            phoneNumber: PaymentCubit.get(context).phoneController.text,
                          ),
                          integrationId: int.parse(integrationIDs[paymentCardModel.paymentMethod] )
                      ),).then((value) => paymentCardModel.paymentMethod == 'kiosk' ?PaymentCubit.get(context).kioskPayments(
                      KioskPaymentsParam(
                          source: Source(identifier: 'AGGREGATOR', subtype: 'AGGREGATOR'),
                          paymentToken:  PaymentCubit.get(context).finalToken
                      )) : null )  );
              },),
            ),
          ),
        );
      },
    );
  }
}