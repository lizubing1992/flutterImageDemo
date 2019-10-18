import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

/// @desp:
/// @time 2019/10/18 13:47
/// @author lizubing
class NetCacheImageProvider {

  final BaseCacheManager cacheManager;

  /// Web url of the image to load
  final String url;

  /// Scale of the image
  final double scale;

  /// Listener to be called when images fails to load.
  final ErrorListener errorListener;

  // Set headers for the image provider, for example for authentication
  final Map<String, String> headers;

  NetCacheImageProvider(this.cacheManager, this.url, this.scale,
      this.errorListener, this.headers);


}
