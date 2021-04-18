import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/utils/app_theme.dart';

class ItemTitle extends StatelessWidget {
  final String title;
  final String lastName;
  final String firstName;

  ItemTitle({required this.title, required this.firstName, required this.lastName});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(right: AppTheme.padding_5),
              child: Text(
                lastName,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Text(
              firstName,
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        )
      ],
    );
  }
}
