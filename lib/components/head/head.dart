import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class Head extends StatelessWidget {
  final headIcons = [
    'assets/head/add_icon.svg',
    'assets/head/Heart.svg',
    'assets/head/Share.svg'
  ];
  Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/head/logo.svg',
                width: 120,
              ),
            ),
            Transform.rotate(
              angle: 270 * math.pi / 180,
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 92,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(headIcons.length, (index) {
              return InkWell(
                onTap: () {},
                child: SvgPicture.asset(headIcons[index], width: 25),
              );
            }),
          ),
        )
      ],
    );
  }
}
