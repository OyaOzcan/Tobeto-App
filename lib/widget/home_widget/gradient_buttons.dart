import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final VoidCallback onSecondaryPressed;
  final List<Color> gradientColors;

  const GradientButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.onSecondaryPressed,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 8), 
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(20), 
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        elevation: 8,
        child: Container(
          width: width,
          height: 160, 
          padding: EdgeInsets.only(top: 16, bottom: 16), 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, 
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20, 
                ),
              ),
              ElevatedButton(
                onPressed: onSecondaryPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .primary, 
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(18), 
                  ),
                ),
                child: Container(
                  width: 210,
                  height: 20,
                  alignment: Alignment.center,
                  child: Text(
                    'Başla',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
