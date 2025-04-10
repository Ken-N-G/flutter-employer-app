import 'package:flutter/material.dart';

class ErrorButton extends StatelessWidget {
  const ErrorButton(
    {super.key,
    required this.child,
    required this.onTap,
    this.width,
    this.height
  });

  final Widget? child;
  final Function() onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Material(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.error,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
