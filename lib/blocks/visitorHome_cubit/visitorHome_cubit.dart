import 'package:asz/blocks/userHome_cubit/userHome_states.dart';
import 'package:asz/blocks/visitorHome_cubit/visitorHome_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VisitorHomeCubit extends Cubit<VisitorHomeStates>{
  VisitorHomeCubit() : super(VisitorHomeInit());

  static VisitorHomeCubit get(context)=>BlocProvider.of(context);

  List boolCheck=[false,false,false,false,false,false,false,false];


  void isBoolChecked(i){
    boolCheck[i]=!boolCheck[i];
    emit(VisitorHomeChangedState());
  }


}