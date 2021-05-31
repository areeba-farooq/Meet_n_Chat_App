import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CategorySelector extends StatefulWidget {

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  final List<String> categories = ['Messages', 'Online', 'Groups', 'Request'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme
                    .of(context)
                    .primaryColor
                    .withOpacity(0.9),
                Theme
                    .of(context)
                    .accentColor
                    .withOpacity(0.9),
              ],
              stops: [0.0, 1.0])
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Text(categories[index], style: TextStyle(
                    color: index == selectedIndex ? Colors.white : Colors
                        .white60,
                    fontFamily: 'Acme',
                    fontSize: 25.0,
                    letterSpacing: 1.0
                ),),
              ),
            );
          }),
    );
  }
}