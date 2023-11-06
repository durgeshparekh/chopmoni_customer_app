import 'package:chopmoni_customer_app/config/app_style.dart';
import 'package:chopmoni_customer_app/config/image_url.dart';
import 'package:chopmoni_customer_app/views/order/OrderPayScreen.dart';
import 'package:chopmoni_customer_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDetailsScreen extends StatelessWidget {
  const MenuDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi,Samuel",
                style: AppStyles.appbarTitleText.copyWith(fontSize: 16),
              ),
              Text(
                "\u20A6 10,000",
                style: AppStyles.appbarTitleText.copyWith(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset(foodImg, height: 150, width: double.infinity),
          const SizedBox(
            height: 20.0,
          ),
          Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text("Qty To Order :"),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ), // Border around TextField
                              borderRadius: BorderRadius.circular(
                                4.0,
                              ), // Optional: Rounded corners
                            ),
                            child: Row(
                              children: [
                                const Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: '1',
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 10.0),
                                      border: InputBorder
                                          .none, // No TextField border
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Handle up arrow button press
                                      },
                                      child: const Icon(Icons.arrow_drop_up),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Handle down arrow button press
                                      },
                                      child: const Icon(Icons.arrow_drop_down),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("Order Type :"),
                        const SizedBox(
                          width: 30.0,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1.0), // Border around TextField
                              borderRadius: BorderRadius.circular(
                                  4.0), // Optional: Rounded corners
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      hintText: '1',
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 10.0),
                                      border: InputBorder
                                          .none, // No TextField border
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Handle down arrow button press
                                  },
                                  child: const Icon(Icons.arrow_drop_down),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text("Total (₦):"),
                        const SizedBox(
                          width: 50.0,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1.0), // Border around TextField
                              borderRadius: BorderRadius.circular(
                                  4.0), // Optional: Rounded corners
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      hintText: '1',
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 10.0),
                                      border: InputBorder
                                          .none, // No TextField border
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          CustomButtons(
              text: "Continue Ordering",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onBtnPressed: () {
                Get.to(() => const OrderPayScreen());
              }),
          const SizedBox(
            height: 10,
          ),
          CustomButtons(
              text: "Pay",
              buttonColor: Colors.green,
              textColor: Colors.white,
              onBtnPressed: () {})
        ]),
      ),
    );
  }
}
