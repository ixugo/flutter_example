import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/photo_view_util.dart';

class InkWellPictrue extends StatelessWidget {
  final String url;

  InkWellPictrue(this.url);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // 新窗口打开图片
          Navigator.of(context).push(new FadeRoute(
              page: PhotoViewSimpleScreen(
            maxScale: 1.1,
            minScale: 0.5,
            imageProvider: NetworkImage(url),
            heroTag: 'simple',
          )));
        },
        // 加载图片
        child: CachedNetworkImage(
          imageUrl: url,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ));
  }
}
