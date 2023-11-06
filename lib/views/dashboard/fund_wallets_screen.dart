import 'package:chopmoni_customer_app/config/app_style.dart';
import 'package:chopmoni_customer_app/config/constants_colors.dart';
import 'package:chopmoni_customer_app/config/image_url.dart';
import 'package:chopmoni_customer_app/views/wallets/widget/wallets_item.dart';
import 'package:chopmoni_customer_app/widgets/custom_button.dart';
import 'package:chopmoni_customer_app/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FundWalletScreen extends StatelessWidget {
  const FundWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi,Samuel",
                      style: AppStyles.appbarTitleText.copyWith(fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return dialogBox();
                            });
                      },
                      child: SvgPicture.asset(
                        addPlusRound,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [greenLightShade, greenDarkShade],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 20.0, bottom: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wallet Balance',
                              style: AppStyles.appbarTitleText.copyWith(
                                  fontSize: 18, color: lightBackgroundColor),
                            ),
                            Text(
                              '4 Apr 2023',
                              style: AppStyles.appbarTitleText.copyWith(
                                fontSize: 10,
                                color: lightBackgroundColor,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "0.00",
                          style: AppStyles.appbarTitleText.copyWith(
                              fontSize: 22.0, color: lightBackgroundColor),
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 10),
              Text(
                "Recent transactions",
                style: AppStyles.appbarTitleText.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return const WalletsItems();
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget dialogBox() {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      content: SizedBox(
        width: double.infinity,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(
                      100), // Adjust the radius for desired roundness
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/256/666/666201.png', // Replace with your image URL
                    width: 25, // Set the desired width
                    height: 25, // Set the desired height
                    fit: BoxFit.cover, // Adjust the BoxFit as needed
                  )),
              const Text(
                "samuelakano@gmail.com",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          const SizedBox(height: 10),
          CustomFormField(
            label: 'Bank Name',
            inputType: TextInputType.name,
            maxLength: 50,
            validator: (value) {
              return null;
            },
          ),
          const SizedBox(height: 10),
          CustomFormField(
            label: 'Bank Account Number (10 digits)',
            inputType: TextInputType.name,
            maxLength: 50,
            validator: (value) {
              return null;
            },
          ),
          const SizedBox(height: 10),
          CustomFormField(
            label: 'Amount',
            inputType: TextInputType.name,
            maxLength: 50,
            validator: (value) {
              return null;
            },
          ),
          const SizedBox(height: 10),
          CustomButtons(
            text: 'Fund My Wallet',
            buttonColor: Colors.green,
            onBtnPressed: () {},
            textColor: Colors.white,
          ),
        ]),
      ),
    );
  }
}
