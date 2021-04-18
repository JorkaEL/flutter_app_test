import 'package:equatable/equatable.dart';
import 'package:flutter_app_test/domain/entities/user.entity.dart';

/// State pour le cubit ListCubit
abstract class ListState extends Equatable {}

class ListLoadingState extends ListState {
  @override
  List<Object?> get props => ['ListLoadingState'];
}

class ListDataState extends ListState {
  final List<User> users;
  final int nextPageNumber;
  final bool isLastPage;

  ListDataState(this.users, this.nextPageNumber, this.isLastPage);

  @override
  List<Object?> get props => ['ListDataState', users, nextPageNumber, isLastPage];
}

class ListDetailState extends ListState {
  final User user;
  final int index;

  ListDetailState(this.user, this.index);
  @override
  List<Object?> get props => ['ListDetailState', user, index];
}
