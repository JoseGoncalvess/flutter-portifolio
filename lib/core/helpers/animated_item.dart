import 'package:flutter/material.dart';

class AnimatedItem extends StatelessWidget {
final Widget child;
  final int delayMilliseconds;


  const AnimatedItem({ super.key, required this.child, required this.delayMilliseconds });

   @override
   Widget build(BuildContext context) {
       return TweenAnimationBuilder<double>(
       
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: delayMilliseconds),
      curve: Curves.easeOut,
      
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );

  }
}