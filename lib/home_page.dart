import 'package:clone_instagram/components/body/body.dart';
import 'package:clone_instagram/components/head/head.dart';
import 'package:clone_instagram/components/nav_bottom/get_footer.dart';
import 'package:clone_instagram/components/storie/stories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetFooter(),
      appBar: AppBar(
        elevation: 0,
        title: Head(),
        backgroundColor: const Color.fromARGB(255, 251, 251, 251),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * .17,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: const [
                        Stories(
                          typeStorie: 'user',
                        ),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                        Stories(typeStorie: 'friend'),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.black.withOpacity(.3)),
              const SizedBox(height: 10),
              const Body(),
              Divider(color: Colors.black.withOpacity(.3)),
              const Body(),
              Divider(color: Colors.black.withOpacity(.3)),
              const Body(),
              Divider(color: Colors.black.withOpacity(.3)),
              const Body(),
            ],
          ),
        );
      }),
    );
  }
}
