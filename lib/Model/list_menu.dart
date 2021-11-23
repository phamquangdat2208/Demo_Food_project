import 'package:demo_food_project/Model/item_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DrawerItems{
  static const profile = DrawerItem( icon: Icons.account_circle_outlined, title: 'Profile');
  static const order = DrawerItem(icon: Icons.shopping_cart_outlined, title: 'Orders');
  static const offer = DrawerItem(icon: Icons.tag, title: 'Offer and Promo');
  static const pricy  = DrawerItem(icon: Icons.library_books, title: 'Privacy policy');
  static const security = DrawerItem(icon: FontAwesomeIcons.shieldAlt,title: 'Security');
static final List<DrawerItem> all = [
  profile,
  order,
  offer,
  pricy,
  security,
  ];
}