import 'package:asz/blocks/userHome_cubit/userHome_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserHomeCubit extends Cubit<UserHomeStates>{
  UserHomeCubit() : super(UserHomeInit());

  static UserHomeCubit get(context)=>BlocProvider.of(context);

  List boolCheck=[false,false,false,false,false];

  List index = [0];





  void isBoolChecked(i){
    boolCheck[i]=!boolCheck[i];
    emit(UserHomeChangedState());
  }
  void isTapped(i){
    index[0]=i;
    emit(UserHomeTappedState());
  }
  void isClicked(){
    boolCheck[0]=!boolCheck[0];
    emit(UserHomeClickedState());
  }

  void isClicked1(){
    boolCheck[1]=!boolCheck[1];
    emit(UserHomeClickedState1());
  }

  void isClicked2(){
    boolCheck[2]=!boolCheck[2];
    emit(UserHomeClickedState2());
  }

  void isClicked3(){
    boolCheck[3]=!boolCheck[3];
    emit(UserHomeClickedState3());
  }



}