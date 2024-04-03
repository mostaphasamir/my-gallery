import 'package:flutter/material.dart';

import '../../../../generated/app_assets.dart';

class DefaultBackgroundImage extends StatelessWidget {
  final Widget? child ;
  const DefaultBackgroundImage({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.imagesBackground,),fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
