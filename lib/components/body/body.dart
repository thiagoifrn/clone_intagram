import 'package:clone_instagram/components/body/body_bottom.dart';
import 'package:clone_instagram/components/body/body_footer.dart';
import 'package:clone_instagram/components/body/body_top.dart';
import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BodyTop(),
        Container(
          width: double.infinity,
          height: 320,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(
                'assets/body/Image.png',
              ),
            ),
          ),
        ),
        BodyBottom(),
        const BodyFooter()
      ],
    );
  }
}
