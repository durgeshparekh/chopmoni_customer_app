import 'package:chopmoni_customer_app/config/app_style.dart';
import 'package:chopmoni_customer_app/config/image_url.dart';
import 'package:chopmoni_customer_app/views/menu/menu_details_screen.dart';
import 'package:chopmoni_customer_app/views/menu/widgets/menu_list.dart';
import 'package:chopmoni_customer_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPayScreen extends StatelessWidget {
  const OrderPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      elevation: 2,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "THE MENU",
                                style: AppStyles.appbarTitleText
                                    .copyWith(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Text(
                                  "Qty",
                                  style: AppStyles.appbarTitleText
                                      .copyWith(fontSize: 12),
                                ),
                              ),
                              Flexible(
                                flex: 4,
                                child: Text(
                                  "Item ",
                                  style: AppStyles.appbarTitleText
                                      .copyWith(fontSize: 12),
                                ),
                              ),
                              const Spacer(),
                              Flexible(
                                flex: 2,
                                child: Text(
                                  "Price (\u20A6)",
                                  style: AppStyles.appbarTitleText
                                      .copyWith(fontSize: 12),
                                ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return MenuList(
                                  text: "ma",
                                  onPressed: () {
                                    Get.to(() => const MenuDetailsScreen());
                                  });
                            }),
                      ]),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "You are paying",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            child: Text(
                              "\u20A6 10,000",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomButtons(
                      text: "Pay",
                      textColor: Colors.white,
                      buttonColor: Colors.green,
                      onBtnPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 5,
                right: 20,
                left: 20,
                child: ClipOval(
                  child: Image.asset(
                    customerLogo,
                    width: 100, // Set the desired width
                    height: 100, // Set the desired height
                    // You can adjust the fit as needed
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
