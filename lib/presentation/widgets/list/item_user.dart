import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/entities/user.entity.dart';
import 'package:flutter_app_test/domain/utils/app_theme.dart';
import 'package:flutter_app_test/presentation/pages/list/list.cubit.dart';
import 'package:flutter_app_test/presentation/widgets/list/item_thumbnail.dart';
import 'package:flutter_app_test/presentation/widgets/list/item_title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemUser extends StatelessWidget {
  final User user;
  final int index;
  final double _containerHeight = 100.0;

  ItemUser({required this.user, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<ListCubit>().goToDetail(user, index),
      child: Padding(
        padding: EdgeInsets.all(AppTheme.padding_10),
        child: Container(
          height: _containerHeight,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppTheme.radius_10),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: AppTheme.radius_5, offset: Offset(0.0, 5.0))]),
          child: Row(
            children: [
              ItemThumbnail(thumbnail: user.thumbnail, tag: index),
              ItemTitle(
                title: user.title,
                lastName: user.lastName,
                firstName: user.firstName,
              )
            ],
          ),
        ),
      ),
    );
  }
}
