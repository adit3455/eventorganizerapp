part of 'bottom_nav_bloc.dart';

abstract class BottomNavEvent extends Equatable {
  const BottomNavEvent();

  @override
  List<Object> get props => [];
}

class OnSelectedIndex extends BottomNavEvent {
  final int value;

  const OnSelectedIndex({required this.value});
  @override
  List<Object> get props => [value];
}
