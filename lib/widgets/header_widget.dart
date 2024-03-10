import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_street_map/widgets/header_icons_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Text(
            'discover',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.amber),
          ),
          Spacer(),
          HeaderIconswidget(
              colorContainer: Color.fromARGB(148, 212, 212, 209),
              icon: Icon(
                Icons.search_sharp,
                color: Colors.white30,
              )),
          SizedBox(
            width: 10,
          ),
          HeaderIconswidget(
              colorContainer: Colors.amber,
              icon: Icon(FontAwesomeIcons.earthAmericas)),
          SizedBox(
            width: 10,
          ),
          HeaderIconswidget(
              colorContainer: Colors.amber,
              icon: Icon(
                Icons.location_on_outlined,
                size: 25,
              )),
          SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
