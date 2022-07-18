import 'package:asz/blocks/editUserAccount_cubit/editUserAccount_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditUserAccountCubit extends Cubit<EditUserAccountStates>{
  EditUserAccountCubit() : super(EditUserAccountInit());

  static EditUserAccountCubit get(context)=>BlocProvider.of(context);

  List boolCheck=[false,false];
  List gender=[
    'ذكر',
    'أنثي',
  ];
  void isBoolChecked(val,i){
    boolCheck[i]=val;
    emit(EditUserAccountCheckedState());
  }

}