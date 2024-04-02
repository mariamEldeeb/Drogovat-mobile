// Copyright (c) 2017, Brian Armstrong. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of digital_font;

class DigitalColon extends StatelessWidget {
  final double height;
  final Color color;

  DigitalColon({Key? key, required this.height, required this.color})
      : assert(height != null),
        assert(color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return new CustomPaint(
      size: new Size(height / 2.0, height),
      painter: new _DigitalColonPainter(height, color),
    );
  }
}

class _DigitalColonPainter extends CustomPainter {
  final double height;
  final Color color;

  _DigitalColonPainter(this.height, this.color);

  @override
  bool shouldRepaint(_DigitalColonPainter oldDelegate) {
    return height != oldDelegate.height
        || color != oldDelegate.color;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final double width = height / 2;
    final double thickness = width / 5;

    final Paint paint = new Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Top dot
    canvas.drawRect(new Rect.fromLTWH(
      width / 2 - thickness / 2,
      height / 3 - thickness / 2,
      thickness,
      thickness,
    ), paint);
    // Bottom dot
    canvas.drawRect(new Rect.fromLTWH(
      width / 2 - thickness / 2,
      height * 2 / 3 - thickness / 2,
      thickness,
      thickness,
    ), paint);
  }
}

