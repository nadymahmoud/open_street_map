import 'package:flutter/material.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Add View',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
