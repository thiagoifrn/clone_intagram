import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetFooter extends StatelessWidget {
  GetFooter({Key? key}) : super(key: key);
  final List bottomIcons = [
    'assets/nav_bottom/Home.svg',
    'assets/nav_bottom/Search.svg',
    'assets/nav_bottom/Reels.svg',
    'assets/nav_bottom/Union.svg',
    'assets/nav_bottom/account.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomIcons.length, (index) {
            return InkWell(
              onTap: () {
                print(index);
              },
              child: SvgPicture.asset(
                bottomIcons[index],
                width: 27,
              ),
            );
          }),
        ),
      ),
    );
  }
}
