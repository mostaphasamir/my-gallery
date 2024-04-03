import 'package:flutter/material.dart';

import '../../../../generated/app_assets.dart';

class DefaultBackgroundImage extends StatelessWidget {
  final Widget? child ;
  final String ? assetsPath ;
  const DefaultBackgroundImage({super.key, this.child, this.assetsPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(assetsPath??AppAssets.imagesBackground,),fit: BoxFit.fill),
      ),
      child: child,
    );
  }
}
