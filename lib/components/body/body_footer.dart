import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class BodyFooter extends StatelessWidget {
  const BodyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/body/text1.svg',
            width: 280,
          ),
          const SizedBox(
            height: 5,
          ),
          SvgPicture.asset(
            'assets/body/Comments.svg',
            width: 380,
          ),
        ],
      ),
    );
  }
}
