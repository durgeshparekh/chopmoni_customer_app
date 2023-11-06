import 'package:chopmoni_customer_app/views/wallets/create_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletController extends GetxController {
  final createWalletKey = GlobalKey<FormState>();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();

   openCreateWallet() {

      // Perform registration logic here
      // You can access the field values using _firstNameController.text, etc.
     Get.to(() =>   const CreateWalletsScreen());
  }

  createWallet() {
    if (createWalletKey.currentState!.validate()) {
      // Perform registration logic here
      // You can access the field values using _firstNameController.text, etc.
      Get.to(() =>  const CreateWalletsScreen());
    }
  }
}