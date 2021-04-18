import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/utils/app_theme.dart';

class DetailTitle extends StatelessWidget {
  final String title;

  DetailTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppTheme.padding_5),
      child: Container(
        padding: EdgeInsets.only(bottom: AppTheme.padding_5),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
