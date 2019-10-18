import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// @desp: 缓存配置
/// @time 2019/10/18 17:11
/// @author lizubing
class ImageCacheManager extends BaseCacheManager {
  static const key = "ImageCacheManager";

  static ImageCacheManager _instance;

  factory ImageCacheManager() {
    if (_instance == null) {
      _instance = new ImageCacheManager._();
    }
    return _instance;
  }

  ImageCacheManager._() : super(key);

  Future<String> getFilePath() async {
    if (Platform.isIOS) {
      var directory = await getTemporaryDirectory();
      return p.join(directory.path, key);
    } else {
      var directory = await getExternalStorageDirectory();
      return p.join(directory.path, key);
    }
  }
}
