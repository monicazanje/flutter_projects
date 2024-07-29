import 'package:fitness_app/view/navigation.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  @override
  State<ExploreScreen> createState() => _ExploreState();
}

class _ExploreState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
