import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  const SizedBox(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/storie/ProfilePic.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/body/arneo.svg',
                    width: 95,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 60,
              height: 60,
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.more_horiz,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }
}
