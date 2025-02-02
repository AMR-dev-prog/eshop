import 'package:flutter/material.dart';
import 'package:flutter_application_2/combonants/ProdectTile.dart';
import 'package:flutter_application_2/combonants/myDrawer.dart';
//import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/models/shop.dart';
import 'package:provider/provider.dart';

class shopePage extends StatelessWidget {
  const shopePage({super.key});

  @override
  Widget build(BuildContext context) {
    final products=context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(title: const Text("Shop Page"),
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [ IconButton(onPressed: ()=>Navigator.pushNamed( context, '/cartPage'), icon:  const Icon(Icons.shopping_cart))],
      ),
      drawer: const Mydrawer(),
      backgroundColor:Theme.of(context).colorScheme.surface,
     body: ListView(
      children: [
     const SizedBox(height: 30,),
        Center(child: Text("Suppy shop",
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,color: Theme.of(context).colorScheme.inversePrimary ,),),),
        SizedBox(
      height: 600,
       child: ListView.builder(
        
        padding: const EdgeInsets.all(15),
        itemCount: products.length,
        itemBuilder: (context,index){
          final product=products[index];
       
          return MYProdectTile(product: product,);
        },
       ),
     ),
      ],
     )
    );
  }
}