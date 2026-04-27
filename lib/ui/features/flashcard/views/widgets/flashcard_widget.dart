import 'dart:math';
import 'package:flutter/material.dart';

class FlashcardWidget extends StatelessWidget {
  final String front;
  final String back;
  final bool isFlipped;
  final VoidCallback onTap;

  const FlashcardWidget({
    super.key,
    required this.front,
    required this.back,
    required this.isFlipped,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: isFlipped ? 180 : 0),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutBack,
        builder: (context, angle, child) {
          final isBack = angle >= 90;
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle * pi / 180),
            alignment: Alignment.center,
            child: isBack
                ? Transform(
                    transform: Matrix4.identity()..rotateY(pi),
                    alignment: Alignment.center,
                    child: _buildCardSide(
                      context,
                      back,
                      isBack: true,
                    ),
                  )
                : _buildCardSide(
                    context,
                    front,
                    isBack: false,
                  ),
          );
        },
      ),
    );
  }

  Widget _buildCardSide(BuildContext context, String text, {required bool isBack}) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: isBack
              ? [Colors.deepPurple.shade400, Colors.deepPurple.shade700]
              : [Colors.white, Colors.grey.shade100],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isBack ? Colors.white : Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
