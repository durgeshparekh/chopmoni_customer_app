import 'package:chopmoni_customer_app/config/app_style.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final String text;
  //final Widget icon;
  final VoidCallback onPressed;

  const MenuList({
    super.key,
    required this.text,
    //required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.black),
          ],
        ),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Flexible(flex: 1,child:  Text("0x",style: AppStyles.appbarTitleText.copyWith(fontSize: 12),),),
          const SizedBox(width: 10,),
          Flexible(flex: 4,child: Text("jabdfjabsdfbdajbadjb jbfjabf ",style: AppStyles.appbarTitleText.copyWith(fontSize: 12),),),
          const Spacer(),
          Flexible(flex: 2,child: Text("1000 ",style: AppStyles.appbarTitleText.copyWith(fontSize: 12),),),
          const SizedBox(width: 10,),
        ],)
        /* Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //  icon,
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),*/
      ),
    );
  }
}
