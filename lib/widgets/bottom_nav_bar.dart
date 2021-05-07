import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/theme.dart';
import 'package:flutter_demo/models/nav_item.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavItems>(
      builder: (context, value, child) => Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 30,
              color: Color(0xFF4B1A39).withOpacity(0.2))
        ]),
        child: SafeArea(
          child: Row(
              children: List.generate(
                  value.items.length,
                  (index) => buildIconNavBarItem(
                      icon: value.items[index].icon,
                      press: () {
                        value.changeNavIndex(index: index);
                      },
                      isActivie: value.selectIndex == index ? true : false))),
        ),
      ),
    );
  }

  IconButton buildIconNavBarItem(
      {int icon, Function press, bool isActivie = false}) {
    return IconButton(
      icon: Icon(IconData(icon, fontFamily: "MaterialIcons")),
      onPressed: press,
      color: isActivie ? kPrimaryColor : Color(0xFFD1D4D4),
    );
  }
}
