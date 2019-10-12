import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// @desp:
/// @time 2019/10/12 16:33
/// @author lizubing
class NetCacheImage extends StatelessWidget {
  final String imageUrl;
  final Widget placeholderWidget;
  final Widget errorWidget;
  final int fadeOutDuration;
  final int fadeInDuration;
  final Widget imageWidget;

  NetCacheImage(
      {@required this.imageUrl,
      this.placeholderWidget = const CircularProgressIndicator(),
      this.errorWidget = const Icon(Icons.error),
      this.imageWidget,
      this.fadeOutDuration = 1,
      this.fadeInDuration = 3});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder:
          imageWidget == null ? null : (context, imageProvider) => imageWidget,
      placeholder: (context, url) => placeholderWidget,
      errorWidget: (context, url, error) => errorWidget,
      fadeOutDuration: new Duration(seconds: fadeOutDuration),
      fadeInDuration: new Duration(seconds: fadeInDuration),
    );
  }
}
