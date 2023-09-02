import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob_payment/core/components/custom_error_widget.dart';
import 'package:paymob_payment/core/components/custom_loading_widget.dart';
import 'package:paymob_payment/core/utils/styles_manager.dart';
import 'package:paymob_payment/features/payment/ui/cubit/payment_cubit.dart';

class KioskPaymentsScreen extends StatelessWidget {
  const KioskPaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<PaymentCubit, PaymentState>(
          builder: (context, state) {

            if(state is KioskPaymentsErrorState){
              return  Center(child: CustomErrorWidget(msg: state.msg));
            }else if (state is KioskPaymentsSucceededState){
              return Column(
                children: [
                  const Spacer(),
                  Text('Reference number',
                    style: TextStylesManager.boldStyle(fontSize: 20),),
                  const SizedBox(height: 15,),
                  Text(PaymentCubit.get(context).refCodeKiosk,
                    style: TextStylesManager.boldStyle(fontSize: 22),),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                    child: RichText(

                      text: TextSpan(
                          text: 'طريقة الدفع\n ',
                          style: TextStylesManager.semiBoldStyle(fontSize: 16,color: Colors.black),
                          children:   <TextSpan>[
                            TextSpan(text: 'رجاء التوجه إلى أقرب فرع أمان أو مصاري أو ممكن أو سداد و أسأل عن "مدفوعات اكسبت" و أخبرهم بالرقم المرجعي',
                              style: TextStylesManager.regularStyle(fontSize: 14,color: Colors.black),),
                          ]
                      ),
                      textAlign: TextAlign.center,

                    ),



                  ),

                ],
              );
            }
            return const Center(child: CustomLoadingWidget());
          },
        ),
      ),
    );
  }
}
