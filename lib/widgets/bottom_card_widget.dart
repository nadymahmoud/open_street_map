import 'package:flutter/material.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({super.key});
  static List images = [
    Image.asset('assests/images/image1.jpg'),
    Image.asset('assests/images/image2.jpg'),
    Image.asset('assests/images/image3.jpg'),
    Image.asset('assests/images/image4.jpg'),
    Image.asset('assests/images/image5.jpg'),
    Image.asset('assests/images/image1.jpg'),
    Image.asset('assests/images/image2.jpg'),
    Image.asset('assests/images/image3.jpg'),
    Image.asset('assests/images/image4.jpg'),
    Image.asset('assests/images/image5.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      height: 150,
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
                  Positioned(
                      top: 5,
                      left: 8,
                      child: Row(
                        children: [
                          Icon(
                            size: 15,
                            Icons.message,
                            color: Colors.white,
                          ),
                          Text(
                            '452',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            size: 15,
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          Text(
                            '452',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ],
                      ))
                ]),
              ),
          separatorBuilder: (context, index) => SizedBox(),
          itemCount: images.length),
    );
  }
}
