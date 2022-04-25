import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String typeStorie;
  const Stories({
    Key? key,
    required this.typeStorie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                  //color: Color.fromARGB(255, 8, 200, 15),
                  shape: BoxShape.circle,
                  gradient: typeStorie == 'user'
                      ? const LinearGradient(
                          colors: [Colors.green, Colors.greenAccent])
                      : const LinearGradient(
                          colors: [Colors.purple, Colors.redAccent]),
                ),
              ),
              Container(
                width: 72,
                height: 72,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 68,
                height: 68,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/storie/ProfilePic.png",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          const Text('MyName'),
        ],
      ),
    );
  }
}
