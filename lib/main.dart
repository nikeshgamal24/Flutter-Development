import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,
        // backgroundColor: Color.fromARGB(255, 6, 77, 71),

        //using a container put the nested widgets inside the container that allows you to add various decoration to container
        body: GradientContainer(
              Color.fromARGB(255, 0, 29, 83),
              Color.fromARGB(212, 14, 39, 122)
              ),
      ),
    ),
  );
}

