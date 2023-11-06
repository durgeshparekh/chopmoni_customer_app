import 'package:chopmoni_customer_app/config/app_style.dart';
import 'package:chopmoni_customer_app/config/image_url.dart';
import 'package:chopmoni_customer_app/controllers/wallet_conteoller.dart';
import 'package:chopmoni_customer_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WalletsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(WalletController());
    return SafeArea(
        child:Scaffold(
           body: Padding(
             padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 const SizedBox(height: 50,),
                 Text("Would you like to create a Chopmoni wallet?",style: AppStyles.appbarTitleText.copyWith(fontSize: 20),),
                 const SizedBox(height: 25,),
                 Text("Here are some benefits of having a wallet",style: AppStyles.appbarTitleText.copyWith(fontSize: 14),),
                 const SizedBox(height: 10,),
                 ListTile(
                   contentPadding: const EdgeInsets.all(5),
                   tileColor: Colors.white,
                   dense: true,
                   visualDensity:const VisualDensity(horizontal: -4),
                   leading: SvgPicture.asset(
                   rightArrow,
                 ),
                   title: const Text("Pay food vendors quicker"),
                 ),
                 const SizedBox(height: 10,),
                 ListTile(
                   contentPadding: const EdgeInsets.all(5),
                   tileColor: Colors.white,
                   dense: true,
                   visualDensity: const VisualDensity(horizontal: -4),
                   leading: SvgPicture.asset(
                     rightArrow,
                   ),
                   title: const Text("Swift, secure payments"),
                 ),
                 const SizedBox(height: 10,),
                 ListTile(
                   contentPadding: const EdgeInsets.all(5),
                   tileColor: Colors.white,
                   dense: true,
                   visualDensity: const VisualDensity(horizontal: -4),
                   leading: SvgPicture.asset(
                     rightArrow,
                   ),
                   title: const Text("No cash reversals"),
                 ),
                 const SizedBox(height: 30,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Expanded(
                       child: CustomButtons(
                         text: "Create Wallet",
                         buttonColor: const Color(0xFF36B86A),
                         onBtnPressed: ()=> controller.openCreateWallet() ,
                         textColor:Colors.white ,
                       ),
                     ),
                     const SizedBox(width: 20,),
                     Expanded(
                       child: CustomButtons(
                         text: "Skip",
                         buttonColor: Colors.black,
                         onBtnPressed:(){
                         } ,
                         textColor:Colors.white ,
                       ),
                     ),
                   ],
                 )
               ],
             ),
           ),
        )
    );
  }
}
