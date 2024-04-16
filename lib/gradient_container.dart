import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key})
    : color = [color1, color2];

  final Color color1;
  final Color color2;
  final List<Color> color;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}



/*
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {Key? key})
    : super(key: key);
/* class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {Key? key})
  : super(key: key);*/

final Color color1;
final Color color2;

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
                begin: startAlignment,
                end: endAlignment,
          ),
          ),
          child: const Center(
          child: StyledText('LET`S GO'),
        ),
      );
  }
*/
