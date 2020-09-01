import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;
  ClockPainter(this.context, this.dateTime);
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // Calculate the Seconds line coordinates
    // size.width * 0.4 defines our line height
    // dateTime.minute * 6 because, 360 / 60 = 6
    double minuteX =
        centerX + size.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);
    double minuteY =
        centerY + size.height * 0.35 * sin((dateTime.minute * 6) * pi / 180);

    // Draw Minute Line
    canvas.drawLine(
      center,
      Offset(minuteX, minuteY),
      Paint()
        // ..color = Colors.blue
        ..color = Theme.of(context).accentColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    // Calculate the hour line coordinates
    // size.width * 30 because, 360 / 12 = 30
    // dateTime.hour * 0.5 because, each min we want to move this hand a little
    double hourX = centerX +
        size.width *
            0.3 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerY +
        size.height *
            0.3 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    // Draw Hours Line
    canvas.drawLine(
      center,
      Offset(hourX, hourY),
      Paint()
        // ..color = Colors.red
        ..color = Theme.of(context).colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    // Calculate the Seconds line coordinates
    // size.width * 0.4 defines our line height
    // dateTime.second * 6 because, 360 / 60 = 6
    double secondsX =
        centerX + size.width * 0.4 * cos((dateTime.second * 6) * pi / 180);
    double secondsY =
        centerY + size.height * 0.4 * sin((dateTime.second * 6) * pi / 180);

    // Draw Seconds Line
    canvas.drawLine(
        center,
        Offset(secondsX, secondsY),
        // Paint()..color = Colors.green);
        Paint()..color = Theme.of(context).primaryColor);

    // Center Dot Paint Code
    Paint dotPainter = Paint()
      ..color = Theme.of(context).primaryIconTheme.color;
    canvas.drawCircle(center, 24, dotPainter);
    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
