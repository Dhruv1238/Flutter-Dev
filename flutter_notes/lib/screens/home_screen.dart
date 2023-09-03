import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dhruv Notes App'),
        backgroundColor: const Color.fromARGB(255, 77, 28, 110),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30.0),
          padding: const EdgeInsets.all(10.0),
          height: 100.0,
          width: 100.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}
