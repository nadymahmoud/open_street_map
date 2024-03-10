import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_street_map/home/open_street_map_home.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController _controller = PersistentTabController();

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarsItems(),
      backgroundColor: Colors.black,
      navBarStyle: NavBarStyle.style12,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    OpenStreetMapHome(),
    OpenStreetMapHome(),
    OpenStreetMapHome(),
    OpenStreetMapHome(),
    OpenStreetMapHome(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      // title: ("Home"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(FontAwesomeIcons.compass),
      // title: ("Home"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset('assests/images/logo.svg'),
      // title: ("Home"),
      //   activeColorPrimary: Colors.white,
      //  inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.add),
      // title: ("Home"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(FontAwesomeIcons.circleUser),
      // title: ("Home"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}
