import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  const ImageWidget({
    super.key,
    required this.imagePath,
    this.width = 250,
    this.height = 250,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
