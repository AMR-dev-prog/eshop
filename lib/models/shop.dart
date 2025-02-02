

import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/prodacet.dart';

class Shop extends ChangeNotifier{
  final List<Prodacet>_shop=
  [
    Prodacet(name: 'name1',imagePath:'lib/images/888392643360__STD__shad__fr.png' , prise: 69, description: "one good thing"),
    Prodacet(name: 'name2',imagePath:'lib/images/888392643360__STD__shad__fr.png' , prise: 69, description: "two good thing"),
    Prodacet(name: 'name3',imagePath:'lib/images/888392643360__STD__shad__fr.png' , prise: 69, description: "three good thing"),
    Prodacet(name: 'name4.', imagePath:'lib/images/888392643360__STD__shad__fr.png' ,prise: 69, description: "four good thing"),

  ];

  // user cart
  final List<Prodacet> _cart=[];

  //get prodect list
  List<Prodacet>get shop =>_shop;

  //get user cart 
  List<Prodacet>get cart =>_cart;

  //add item to cart
 void addItemToCart(Prodacet item ){
  _cart.add(item);
  notifyListeners();
 }
  //remove item from cart
   void removeItemfromCart(Prodacet item ){
  _cart.remove(item);
  notifyListeners();
 }
}