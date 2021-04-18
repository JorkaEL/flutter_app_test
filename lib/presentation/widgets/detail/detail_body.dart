import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/utils/app_theme.dart';

class DetailBody extends StatelessWidget {
  final List<Widget> children;

  DetailBody({required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppTheme.padding_10),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(AppTheme.radius_5)),
        child: Padding(
          padding: EdgeInsets.only(left: AppTheme.padding_15, right: AppTheme.padding_10, top: AppTheme.padding_10, bottom: AppTheme.padding_5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
