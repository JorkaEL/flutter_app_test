import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/utils/app_theme.dart';

class ItemThumbnail extends StatelessWidget {
  final String thumbnail;
  final int tag;

  ItemThumbnail({required this.thumbnail, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Padding(
          padding: EdgeInsets.all(AppTheme.padding_10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppTheme.radius_50),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: AppTheme.radius_5, offset: Offset(0.0, 5.0))]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppTheme.radius_50),
              child: Image.network(
                thumbnail,
              ),
            ), /*ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.network(
              thumbnail,
            )),*/
          )),
    );
  }
}
