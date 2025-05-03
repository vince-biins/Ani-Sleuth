import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.idle());
  void navigateTo(String routeName, {Object? arguments}) {
    emit(NavigationState.navigateTo(routeName, arguments: arguments));

    emit(NavigationState.idle());
  }

  void pop() {
    emit(const NavigationState.pop());
    emit(NavigationState.idle());
  }

  void pushNamedAndRemoveUntil(
    String routeName,
    String untilRouteName, {
    Object? arguments,
  }) {
    emit(
      NavigationState.pushNamedAndRemoveUntil(
        routeName,
        untilRouteName,
        arguments: arguments,
      ),
    );
    emit(NavigationState.idle());
  }

  void pushNamedAndRemoveUntilWithArgs(
    String routeName,
    String untilRouteName, {
    Object? arguments,
  }) {
    emit(
      NavigationState.pushNamedAndRemoveUntilWithArgs(
        routeName,
        untilRouteName,
        arguments: arguments,
      ),
    );
    emit(NavigationState.idle());
  }
}
