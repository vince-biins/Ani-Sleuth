import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.idle());
  void navigateTo(GoRouteData route) {
    emit(NavigationState.navigateTo(route));

    emit(NavigationState.idle());
  }

  void pop() {
    emit(const NavigationState.pop());
    emit(NavigationState.idle());
  }
}
