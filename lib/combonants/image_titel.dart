import 'package:flutter/material.dart';

class ImageTitel extends StatelessWidget {
  final String path;
  const ImageTitel({super.key,required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
      color: Colors.grey.shade400,
      borderRadius: BorderRadius.circular(7),
      border:Border.all(color: Colors.black),
        
      ),
     child:  Center(child: Image.asset(path,height: 60,width: 60,)),
    );
  }
}