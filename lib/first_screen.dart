import 'dart:ffi';

import 'package:flutter/material.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/dev2.jpg',
              width: 200,
              height: 200,
              errorBuilder: (context, error, stackTrace) {
                return const Text("error");
              },
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'Marco Maged',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 200,
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.deepOrange, width: 4),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Center(child: Text('flutter developer')),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('dd');
        },
        backgroundColor: Colors.brown,
        elevation: 0.0,
        mini: true,
        child: const Icon(Icons.add),
      ),
    );
  }
}
