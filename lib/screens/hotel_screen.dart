import 'package:bookingticket/utils/app_layout.dart';
import 'package:bookingticket/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 2,
              spreadRadius: 1,
            )
          ]),
      child: Column(children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${hotel['image']}'))),
        ),
        Gap(10),
        Text(
          hotel['place'],
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        Gap(5),
        Text(
          hotel['destination'],
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        Gap(8),
        Text(
          '\$${hotel['price']}/night',
          style: Styles.headLineStyle.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}