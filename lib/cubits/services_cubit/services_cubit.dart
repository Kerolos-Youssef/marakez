import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marakez/cubits/services_cubit/services_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(ServicesInitial());
  static ServicesCubit get(context) => BlocProvider.of(context);
  int selectedIndex=0;
  void changeItemCat({required index}){
    selectedIndex=index;
    emit(ChangeServiceCatState());
  }
}
