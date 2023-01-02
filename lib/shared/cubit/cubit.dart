import 'package:crypto_app/shared/cubit/states.dart';
import 'package:crypto_app/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinsCubit extends Cubit<CoinsStates>{
  CoinsCubit() : super(CoinsInitialState());

  static CoinsCubit get(context) => BlocProvider.of(context);

  List<dynamic> coins = [];

  void getCoinsData(){
    emit(CoinsGetLoadingState());
    DioHelper.getData(
      url: 'coins',
      query: {},
    ).then((value) {
      coins = value.data;
      emit(CoinsGetSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(CoinsGetErrorState(error));
    });
  }

  late var coinsDetails;

  void getCoinsDetails(String id,String spec){
    emit(CoinsGetDetailsLoadingState());
    DioHelper.getData(
        url: 'coins/$id',
        query: {}
    ).then((value) {
      coinsDetails = value.data[spec];
      print(coinsDetails);
      emit(CoinsGetDetailsSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(CoinsGetErrorState(error));
    });
  }

  // late var coinsName;
  // void getCoinsName(String id,String spec){
  //   coinsName = getCoinsDetails(id, spec);
  // }

  // DioHelper.getData(
  // url: 'coins',
  // query: {},
  // ).then((value) {
  // print(value.data[10]);
  // });
}
//        ..getCoinsDetails(id, 'symbol')
//         ..getCoinsDetails(id, 'rank')
//         ..getCoinsDetails(id, 'is_new')
//         ..getCoinsDetails(id, 'is_active')
//         ..getCoinsDetails(id, 'type')
//         ..getCoinsDetails(id, 'logo')
//         ..getCoinsDetails(id, 'tags')
//         ..getCoinsDetails(id, 'team')
//         ..getCoinsDetails(id, 'description')
//         ..getCoinsDetails(id, 'org_structure')
//         ..getCoinsDetails(id, 'hash_algorithm')
//         ..getCoinsDetails(id, 'links'),