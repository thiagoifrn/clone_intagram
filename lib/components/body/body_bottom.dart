import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyBottom extends StatelessWidget {
  final list = [
    'assets/head/Heart.svg',
    'assets/body/Comment.svg',
    'assets/head/Share.svg',
  ];
  BodyBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(list.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 12),
                  child: SvgPicture.asset(
                    list[index],
                    width: 30,
                  ),
                );
              }),
            ),
            const SizedBox(
              width: 55,
            ),
            Row(
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5, top: 12.0),
                  child: SizedBox(
                    width: 9,
                    height: 9,
                    child: CircleAvatar(
                      backgroundColor:
                          index == 0 ? Colors.blue[500] : Colors.grey[400],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 12),
          child: SvgPicture.asset(
            'assets/body/Bookmark.svg',
            width: 30,
          ),
        ),
      ],
    );
  }
}
