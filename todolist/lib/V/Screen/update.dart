import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: 
        [TextFormField(
             decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your update',
              
            ),
            onTap: (){},

        ),
        Container(
          height: 400,
          child: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),))],),
      ),
    );
  }
}