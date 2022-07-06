import 'package:asz/blocks/newAccChoices_cubit/newAccChoices_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewAccChoicesCubit extends Cubit<NewAccChoicesStates>{
  NewAccChoicesCubit() : super(NewAccChoicesInit());

  static NewAccChoicesCubit get(context)=>BlocProvider.of(context);

  double value=50;
  double value1=140;

  List boolCheck=[false,false,false,false,false,false,false];


  void isBoolChecked(i){
    boolCheck[i]=!boolCheck[i];
    emit(NewAccChoicesCheckedState());
  }

  void isBoolChecked1(val,i){
    boolCheck[i]=val;
    emit(NewAccChoicesCheckedState1());
  }
  void isBoolChecked2(val,i){
    boolCheck[i]=val;
    emit(NewAccChoicesCheckedState2());
  }
  void isBoolChecked3(val,i){
    boolCheck[i]=val;
    emit(NewAccChoicesCheckedState2());
  }


}