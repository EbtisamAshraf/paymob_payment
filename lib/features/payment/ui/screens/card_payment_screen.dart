import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob_payment/core/components/custom_loading_widget.dart';
import 'package:paymob_payment/features/payment/ui/cubit/payment_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CardPaymentScreen extends StatefulWidget {
  const CardPaymentScreen({super.key});

  @override
  State<CardPaymentScreen> createState() => _CardPaymentScreenState();
}

class _CardPaymentScreenState extends State<CardPaymentScreen> {
  final WebViewController webViewController = WebViewController();
  bool loaded = false;
  @override
  void initState() {
    webViewController
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            debugPrint('progress => $progress');
            if(progress == 100){
              setState(() {
                loaded = true;
              });

            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},

        ),
      )
       ..loadRequest(Uri.parse('https://accept.paymob.com/api/acceptance/iframes/784560?payment_token=${BlocProvider.of<PaymentCubit>(context).finalToken}'));


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: loaded ? WebViewWidget(controller: webViewController): const Center(child: CustomLoadingWidget(),),
    );
  }
}
