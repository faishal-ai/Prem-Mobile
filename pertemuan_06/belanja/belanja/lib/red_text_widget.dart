import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RedTextWidget extends StatelessWidget {
  final String text;
  final double maxFontSize;
  final int maxLines;

  const RedTextWidget({
    Key? key,
    required this.text,
    this.maxFontSize = 14,
    this.maxLines = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Pastikan AutoSizeText memiliki batas lebar (SizedBox/Container)
    return SizedBox(
      // Agar fleksibel, tidak memaksa ukuran terlalu kecil; parent bisa override lebar
      width: double.infinity,
      child: AutoSizeText(
        text,
        style: TextStyle(color: Colors.red, fontSize: maxFontSize),
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
