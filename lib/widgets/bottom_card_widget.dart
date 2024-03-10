import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({super.key});
  static List images = [
    Image.asset('assests/images/image5.jpg'),
    Image.asset('assests/images/image5.jpg'),
    Image.asset('assests/images/image5.jpg'),
    Image.asset('assests/images/image5.jpg'),
    Image.asset('assests/images/image5.jpg'),
    Image.asset('assests/images/image5.jpg'),
    Image.asset('assests/images/image5.jpg'),
    Image.asset('assests/images/image5.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: images[index],
                  ),
                  Positioned(child: Row())
                ]),
              ),
          separatorBuilder: (context, index) => SizedBox(),
          itemCount: images.length),
    );
  }
}
