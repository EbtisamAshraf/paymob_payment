import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob_payment/config/routes/app_routes.dart';
import 'package:paymob_payment/features/payment/ui/cubit/payment_cubit.dart';
import 'package:paymob_payment/features/payment/ui/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {

  RegisterScreen({super.key});


  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: BlocConsumer<PaymentCubit, PaymentState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    CustomTextFormField(
                      hintText: 'First Name',
                      icon: Icons.person,
                      keyboardType: TextInputType.name,
                      controller: PaymentCubit.get(context).firstNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, Enter your first name';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Last Name',
                      icon: Icons.person,
                      keyboardType: TextInputType.name,
                      controller: PaymentCubit.get(context).lastNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, Enter your last name';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Email',
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      controller: PaymentCubit.get(context).emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, Enter your email';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Phone',
                      icon: Icons.phone,
                      keyboardType: TextInputType.phone,
                      controller: PaymentCubit.get(context).phoneController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, Enter your phone';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Price',
                      icon: Icons.price_check_outlined,
                      keyboardType: TextInputType.number,
                      controller: PaymentCubit.get(context).priceController,
                       onChanged: (value){
                         PaymentCubit.get(context).setPriceValue(value);
                       },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, Enter price';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () async {

                          if(formKey.currentState!.validate()){
                            Navigator.pushNamed(context, Routes.toggleScreenRoute);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 40),
                        ),
                        child: Text('Pay  ${PaymentCubit.get(context).priceController.text} EGP'))

                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}


