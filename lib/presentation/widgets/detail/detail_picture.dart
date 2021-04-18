import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/utils/app_theme.dart';

class DetailPicture extends StatelessWidget {
  final String picture;
  final int index;

  DetailPicture({required this.picture, required this.index});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: index,
      child: Container(
          padding: EdgeInsets.only(top: AppTheme.padding_10),
          height: 150,
          child: Image.network(
            picture,
            fit: BoxFit.fitHeight,
          )),
    );
  }
}
