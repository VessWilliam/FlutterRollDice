import 'package:first_app/play_dice.dart';
import 'package:flutter/material.dart';

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.formerColor, this.secondColor, {super.key});

  const GradientContainer.Blue({super.key})
      : formerColor = Colors.blueAccent,
        secondColor = Colors.blueGrey;

  final Color formerColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [formerColor, secondColor],
            begin: startAlign,
            end: endAlign),
      ),
      child: const Center(child: PlayDice(),),
    );
  }
}




// class GradientContainer extends StatelessWidget {
  
//   const GradientContainer(List<Color> list, {super.key , required this.listcolor});

//   final List<Color> listcolor;

//   @override
//   Widget build(context) {
    
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: listcolor, 
//          begin: startAlign,
//          end: endAlign),
//       ),
//       child: const Center(
//         child: CustomText('Hello flutter world !'),
//       ),
//     );
//   }
// }








