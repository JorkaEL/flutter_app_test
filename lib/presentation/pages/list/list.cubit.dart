import 'package:flutter_app_test/domain/entities/user.entity.dart';
import 'package:flutter_app_test/domain/use_cases/users.use_cases.dart';
import 'package:flutter_app_test/presentation/pages/list/list.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Cubit pour la page list
class ListCubit extends Cubit<ListState> {
  final UsersUseCases _userUseCases = UsersUseCases();
  final int _maxPageKey = 20;
  ListCubit() : super(ListLoadingState());

  List<User> _users = [];

  /// Methode pour récupérer les user par index de page
  void getUsers(int page) async {
    emit(ListLoadingState());
    var list = await _userUseCases.getUsers(page);
    _users.addAll(list);
    emit(ListDataState(_users, page + 1, page > _maxPageKey));
  }

  /// Methode pour déclencher la navigation vers le détail d'un user
  void goToDetail(User user, int index) {
    emit(ListLoadingState());
    emit(ListDetailState(user, index));
  }
}
