import 'package:flutter/material.dart';
import 'package:flutter_application_2/combonants/button.dart';
import 'package:flutter_application_2/models/prodacet.dart';
import 'package:flutter_application_2/models/shop.dart';
import 'package:provider/provider.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

   void onRemoveItem(BuildContext context,Prodacet prodacet) {
  showDialog(
    context: context,
    builder: (dialogContext) => AlertDialog(
      content: const Text('Add This To Your cart ?'),
      actions: [
        MaterialButton(
          onPressed: () => Navigator.pop(dialogContext), // Use dialogContext here
          child: const Text('Cancel'),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(dialogContext); // Close the dialog
            context.read<Shop>().removeItemfromCart(prodacet); // Access provider using parent context
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );

}
  void onPressOnPayButtun(BuildContext context)
  {
    showDialog(context: context, builder: 
    (context)=>const AlertDialog(
      content: Text("User Wants to pay! Connect this app to your payment backend"),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
  final cart=context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(title: const Text("Shop Cart"),
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      
      ),
      backgroundColor:Theme.of(context).colorScheme.surface,
      body:  Column(
        children: [
          Expanded(child:cart.isEmpty?const Center(child: Text('your cart is empty',style: TextStyle(fontSize: 20),)): ListView.builder(
            itemCount: cart.length,
            itemBuilder:
           (context,index )
           {
            final item=cart[index];

           return  ListTile(
            title: Text(item.name),
            subtitle: Text(item.prise.toStringAsFixed(2)),
            trailing:IconButton(onPressed: ()=> onRemoveItem(context,item), icon:  const Icon(Icons.delete),
            ),
           );
           }
           
           ),),


           Padding(
             padding: const EdgeInsets.all(25.0),
             child: myButton(onTap:()=>onPressOnPayButtun (context), child: const Text('Pay Now')),
           )
        ],
      ),
    );
  }
}