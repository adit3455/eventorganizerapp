import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavInitial(index: 0)) {
    on<OnSelectedIndex>(_onSelectedIndex);
  }

  _onSelectedIndex(OnSelectedIndex event, Emitter<BottomNavState> emit) {
    emit(BottomNavInitial(index: event.value));
  }
}
