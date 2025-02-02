import 'package:flutter/material.dart';
import 'package:flutter_application_2/combonants/button.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
        
            Icon(
              Icons.shop,
              size: 70,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25,),
            //titel
            const Text("minimal Shop",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),),
            const SizedBox(height: 25,),
            //subtitel
           Text("Premium Quality Prodects",
           style: TextStyle( color: Theme.of(context).colorScheme.inversePrimary,),
           ),
            const SizedBox(height: 25,),
            //button
            myButton(onTap: () =>Navigator.pushNamed(context,'/shopePage') , child: const Icon(Icons.arrow_forward),)
          ],
        ),
      ),
    );
  }
}
