import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/utils/app_theme.dart';

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppTheme.padding_5),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: AppTheme.padding_5),
            child: Text(
              '$label :',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Text(value),
        ],
      ),
    );
  }
}
