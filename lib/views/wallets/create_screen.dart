import 'package:chopmoni_customer_app/controllers/wallet_conteoller.dart';
import 'package:chopmoni_customer_app/widgets/custom_button.dart';
import 'package:chopmoni_customer_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateWalletsScreen extends StatelessWidget {
  const CreateWalletsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(WalletController());
    const sizedBox20 = SizedBox(height: 20.0);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            sizedBox20,
            Form(
              key: controller.createWalletKey,
              child: createWalletScreenWidget(controller),
            )
          ],
        ),
      ),
    ));
  }

  Widget createWalletScreenWidget(WalletController controller) {
    const sizedBox20 = SizedBox(height: 20.0);

    return Column(
      children: [
        CustomTextField(
          label: 'First Name',
          inputType: TextInputType.name,
          maxLength: 50,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter your first name.';
            }
            controller.firstNameController.text = value;
            return null;
          },
        ),
        sizedBox20,
        CustomTextField(
          label: 'Last Name',
          inputType: TextInputType.name,
          maxLength: 50,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter your last name.';
            }
            controller.lastNameController.text = value;
            return null;
          },
        ),
        sizedBox20,
        CustomTextField(
          label: 'Mobile Number',
          inputType: TextInputType.name,
          maxLength: 50,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter your mobile number.';
            }
            controller.mobileController.text = value;
            return null;
          },
        ),
        sizedBox20,
        CustomTextField(
          label: 'Email Address (Optional)',
          inputType: TextInputType.name,
          maxLength: 50,
          validator: (value) {
            controller.mobileController.text = value;
            return null;
          },
        ),
        sizedBox20,
        CustomButtons(
          text: "Create My Wallet",
          buttonColor: Colors.green,
          onBtnPressed: () => controller.createWallet(),
          textColor: Colors.white,
        ),
      ],
    );
  }
}
