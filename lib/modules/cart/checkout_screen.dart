import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:supre_me/shared/components/components.dart';
import '../widgets/checkout/address.dart';
import '../widgets/checkout/invoice.dart';
import '../widgets/checkout/order_success.dart';
import '../widgets/checkout/payment_method.dart';
import '../widgets/item_shared/default_button.dart';
import 'cart_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          tr('confirm_order'),
          style: TextStyle(
            color: Colors.black,fontSize: 23,fontWeight: FontWeight.w500
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: ()=>Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CheckoutAddress(),
                PaymentMethod(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    height: 320,
                    child: ListView.separated(
                        itemBuilder: (c,i)=>CartItem(),
                        separatorBuilder: (c,i)=>const SizedBox(height: 20,),
                        padding: EdgeInsets.only(bottom: 70),
                        itemCount: 7
                    ),
                  ),
                ),
                Invoice(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 50),
                  child: DefaultButton(
                    onTap: (){
                      navigateAndFinish(context, OrderSuccess());
                    },
                    text: tr('done'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
