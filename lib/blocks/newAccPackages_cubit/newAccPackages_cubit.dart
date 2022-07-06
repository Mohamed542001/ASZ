import 'package:asz/blocks/newAccDetails_cubit/newAccDetails_states.dart';
import 'package:asz/blocks/newAccPackages_cubit/newAccPackages_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewAccPackagesCubit extends Cubit<NewAccPackagesStates>{
  NewAccPackagesCubit() : super(NewAccPackagesInit());

  static NewAccPackagesCubit get(context)=>BlocProvider.of(context);

  List boolCheck=[false,false,false];




  void isBoolChecked(i){
    boolCheck[i]=!boolCheck[i];
    emit(NewAccPackagesChangedState());
  }


}