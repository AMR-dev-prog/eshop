import 'package:flutter/material.dart';
//import 'package:flutter_application_2/combonants/button.dart';
import 'package:flutter_application_2/models/prodacet.dart';
import 'package:flutter_application_2/models/shop.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_application_2/models/shop.dart';

class MYProdectTile extends StatelessWidget {
  final Prodacet product;
  //final Shop cart;
  const MYProdectTile({super.key, required this.product});

  void AddToCart(BuildContext context) {
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
            context.read<Shop>().addItemToCart(product); // Access provider using parent context
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Product image
          Column(
            mainAxisAlignment:
                MainAxisAlignment.start, // Align all children at the start
            crossAxisAlignment: CrossAxisAlignment
                .start, // Align children horizontally at the start
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(product.imagePath)
                ),
              ),
              const SizedBox(height: 25),
              // Product name
              Text(
                product.name,
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              // Product description
              Text(
                product.description,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(height: 25),
            ],
          ),
          // Product price + add to cart button
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Align row content at the start
            children: [
              Text('\$ ${product.prise.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: IconButton(onPressed: ()=>AddToCart(context), icon: const Icon(Icons.add),))
            ],
          ),
        ],
      ),
    );
  }
}
