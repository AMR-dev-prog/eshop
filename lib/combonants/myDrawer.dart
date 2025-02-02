import 'package:flutter/material.dart';
import 'package:flutter_application_2/combonants/MyList.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.shop,
                  size: 70,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              //list tile
              MyListTile(
                  text: 'Shop',
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context)),
              MyListTile(
                text: 'Cart',
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed( context, '/cartPage');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0),
            child:
                MyListTile(text: 'Exit', icon: Icons.exit_to_app, onTap: (){
                  Navigator.pop(context);

                  Navigator.pushNamedAndRemoveUntil( context, '/introPage',(route)=>false);
                }),
          ),
        ],
      ),
    );
  }
}
