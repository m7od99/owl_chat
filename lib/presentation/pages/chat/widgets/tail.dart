import 'package:flutter/material.dart';

import 'package:owl_chat/data/models/chats/message_model.dart';

class MessagePaint extends CustomPainter {
  final MessageModel message;

  const MessagePaint({
    required this.message,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double triangleHeight = 10.0;
    double triangleWidth = 10.0;
    double roundedBorder = 5.0;

    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    ;
    late final Path path;

    Path drawBubbleBody() {
      if (!message.isMe) {
        path = Path()
          ..lineTo(0, size.height)
          ..lineTo(triangleWidth, size.height - triangleHeight)
          ..lineTo(size.width - roundedBorder, size.height - triangleHeight)
          ..quadraticBezierTo(size.width, size.height - triangleHeight, size.width,
              size.height - triangleHeight - roundedBorder)
          ..lineTo(size.width, roundedBorder)
          ..quadraticBezierTo(size.width, 0, size.width - roundedBorder, 0);
        path.close();
      }
      if (message.isMe) {
        path = Path()
          ..moveTo(size.width - roundedBorder, 0)
          ..lineTo(roundedBorder, 0)
          ..quadraticBezierTo(0, 0, 0, roundedBorder)
          ..lineTo(0, size.height - triangleHeight - roundedBorder)
          ..quadraticBezierTo(0, size.height - triangleHeight, roundedBorder,
              size.height - triangleHeight)
          ..lineTo(size.width - triangleWidth, size.height - triangleHeight)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, roundedBorder)
          ..quadraticBezierTo(size.width, 0, size.width - roundedBorder, 0);
      }
      return path;
    }

    canvas.drawPath(drawBubbleBody(), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomChatBubble extends CustomPainter {
  CustomChatBubble({required this.color, required this.isOwn});

  final Color color;
  final bool isOwn;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth;

    Path paintBubbleTail() {
      late Path path;
      if (!isOwn) {
        path = Path()
          ..moveTo(5, size.height - 5)
          ..quadraticBezierTo(-5, size.height, -16, size.height - 4)
          ..quadraticBezierTo(-5, size.height - 5, 0, size.height - 17);
      }
      if (isOwn) {
        path = Path()
          ..moveTo(size.width - 6, size.height - 4)
          ..quadraticBezierTo(
              size.width + 5, size.height, size.width + 16, size.height - 4)
          ..quadraticBezierTo(
              size.width + 5, size.height - 5, size.width, size.height - 17);
      }
      return path;
    }

    final RRect bubbleBody = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), Radius.circular(16));
    final Path bubbleTail = paintBubbleTail();

    canvas.drawRRect(bubbleBody, paint);
    canvas.drawPath(bubbleTail, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class SpecialChatBubbleOne extends CustomPainter {
  final Color color;
  final Alignment alignment;
  final bool tail;

  SpecialChatBubbleOne({
    required this.color,
    required this.alignment,
    required this.tail,
  });

  double _radius = 10.0;
  double _x = 10.0;

  @override
  void paint(Canvas canvas, Size size) {
    if (alignment == Alignment.topRight) {
      if (tail) {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0,
              size.width - _x,
              size.height,
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
        var path = new Path();
        path.moveTo(size.width - _x, 0);
        path.lineTo(size.width - _x, 10);
        path.lineTo(size.width, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              size.width - _x,
              0.0,
              size.width,
              size.height,
              topRight: Radius.circular(3),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
      } else {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0,
              size.width - _x,
              size.height,
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
      }
    } else {
      if (tail) {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              _x,
              0,
              size.width,
              size.height,
              bottomRight: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
              bottomLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
        var path = new Path();
        path.moveTo(_x, 0);
        path.lineTo(_x, 10);
        path.lineTo(0, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0.0,
              _x,
              size.height,
              topLeft: Radius.circular(3),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
      } else {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              _x,
              0,
              size.width,
              size.height,
              bottomRight: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
              bottomLeft: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = this.color
              ..style = PaintingStyle.fill);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
