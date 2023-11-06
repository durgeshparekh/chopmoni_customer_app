import 'package:chopmoni_customer_app/config/app_style.dart';
import 'package:flutter/material.dart';

class WalletsItems extends StatelessWidget {
  const WalletsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding:const  EdgeInsets.only(left: 10,right: 10,top:5,bottom: 5),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(children: [
              Text("4",style: AppStyles.appbarTitleText.copyWith(fontSize: 14)),
              Text("Apr",),
            ],),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey,
                width: 1,
                height: 57,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Food Order ",style: TextStyle(fontWeight: FontWeight.bold,),),
                        SizedBox(height: 5,),
                        Text("9:30 am",style: TextStyle(fontSize: 12),),
                      ],),
                  ),
                  const SizedBox(width: 10,),
                  Text("-₦2,600.00",style: AppStyles.appbarTitleText.copyWith(fontSize: 14)),
                ],
              ),
            ),
          ],),
      ),
    );
  }
}
