import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/entities/user.entity.dart';
import 'package:flutter_app_test/presentation/pages/list/list.cubit.dart';
import 'package:flutter_app_test/presentation/pages/list/list.state.dart';
import 'package:flutter_app_test/presentation/utils/navigation.constants.dart';
import 'package:flutter_app_test/presentation/widgets/list/item_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final ListCubit _cubit = ListCubit();
  final PagingController<int, User> _pagingController = PagingController(firstPageKey: 1, invisibleItemsThreshold: 10);

  @override
  void initState() {
    super.initState();
    _cubit.getUsers(1);
    _pagingController.addPageRequestListener((pageKey) {
      _cubit.getUsers(pageKey + 1);
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('list.title')),
        centerTitle: true,
      ),
      body: BlocProvider(
          create: (BuildContext context) => _cubit,
          child: BlocConsumer<ListCubit, ListState>(listener: (BuildContext context, ListState state) {
            if (state is ListDataState) {
              if (state.isLastPage) {
                _pagingController.appendLastPage(state.users);
              } else {
                _pagingController.appendPage(state.users, state.nextPageNumber);
              }
            }

            if (state is ListDetailState) {
              Navigator.pushNamed(context, DetailRoute, arguments: {'user': state.user, 'index': state.index});
            }
          }, builder: (BuildContext context, ListState state) {
            return PagedListView<int, User>(
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<User>(itemBuilder: (context, item, index) {
                return ItemUser(user: item, index: index);
              }),
            );
          })),
    );
  }
}
