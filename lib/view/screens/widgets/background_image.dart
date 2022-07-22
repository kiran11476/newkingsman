import 'dart:ui';

import 'package:flutter/cupertino.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: CupertinoColors.white.withOpacity(0),
          ),
        ),
      ),
    );
  }
}
