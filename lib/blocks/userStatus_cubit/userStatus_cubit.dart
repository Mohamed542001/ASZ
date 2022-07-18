import 'package:asz/blocks/userStatus_cubit/userStatus_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserStatusCubit extends Cubit<UserStatusStates>{
  UserStatusCubit() : super(UserStatusInit());

  static UserStatusCubit get(context)=>BlocProvider.of(context);

  List selectedGender=['','',''];
  List selected=[];
  void isSelected(val){
    selected=val;
    emit(UserStatusSelectedState());
  }




}