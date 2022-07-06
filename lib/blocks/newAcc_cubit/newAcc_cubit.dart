import 'package:asz/blocks/newAcc_cubit/newAcc_stated.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewAccountCubit extends Cubit<NewAccountStates>{
  NewAccountCubit() : super(NewAccountInit());

  static NewAccountCubit get(context)=>BlocProvider.of(context);

  List boolCheck=[false,false];
  List gender=[
    'ذكر',
    'أنثي',
  ];
  void isBoolChecked(val,i){
    boolCheck[i]=val;
    emit(NewAccountCheckedState());
  }

}