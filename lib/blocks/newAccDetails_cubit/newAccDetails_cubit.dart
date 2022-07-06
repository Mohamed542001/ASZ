import 'package:asz/blocks/newAccDetails_cubit/newAccDetails_states.dart';
import 'package:asz/res.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewAccDetailsCubit extends Cubit<NewAccDetailsStates>{
  NewAccDetailsCubit() : super(NewAccDetailsInit());

  static NewAccDetailsCubit get(context)=>BlocProvider.of(context);

  double value=50;
  double value1=140;

  List boolCheck=[false,false,false,false];

  void isChanges(val){
    value=val;
    emit(NewAccDetailsChangedState());
  }
  void isChanges1(val){
    value1=val;
    emit(NewAccDetailsChangedState1());
  }

  void isBoolChecked(i){
    boolCheck[i]=!boolCheck[i];
    emit(NewAccDetailsCheckedState());
  }
  void isBoolChecked1(i){
    boolCheck[i]=!boolCheck[i];
    emit(NewAccDetailsCheckedState1());
  }
  void isBoolChecked2(val,i){
    boolCheck[i]=val;
    emit(NewAccDetailsCheckedState2());
  }

}