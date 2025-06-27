import 'package:flutter/material.dart';

class HouverEfect extends StatefulWidget {

  const HouverEfect({ super.key, required this.child });
  final Widget child;

  @override
  State<HouverEfect> createState() => _HouverEfectState();
}

class _HouverEfectState extends State<HouverEfect> {
bool isHovered = false;


   @override
   Widget build(BuildContext context) {
       return  MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        transform: isHovered
            ? (Matrix4.identity()..translate(0, 10, 0)..scaled(10))
            : Matrix4.identity(),
        child: widget.child,
      ),
    );

  }
}