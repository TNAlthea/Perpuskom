import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class Grafik extends CustomPainter {
  double qtyBuku = 0;
  // jumlah buku untuk panjang grafik

  Grafik({required this.qtyBuku});

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = ui.Color.fromARGB(255, 220, 222, 223)
      ..style = PaintingStyle.fill;

    // itung pixel according to qty
    double lebar = (qtyBuku * 235) / 520;

    // 520 = max buku
    // 235 = max px

    canvas.drawCircle(Offset(22, 9), 15, paint1);
    canvas.drawCircle(Offset(lebar + 22, 9), 15, paint1); //circle kanan
    canvas.drawRect(Rect.fromLTWH(22, -6, lebar, 30), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
