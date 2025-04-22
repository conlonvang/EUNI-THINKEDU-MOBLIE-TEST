import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'trangchu_state.dart';

class TrangchuCubit extends Cubit<TrangchuState> {
  TrangchuCubit() : super(TrangchuInitial());
}
