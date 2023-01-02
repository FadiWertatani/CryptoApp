import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:crypto_app/shared/components/components.dart';
import 'package:crypto_app/shared/cubit/cubit.dart';
import 'package:crypto_app/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCoinsScreen extends StatelessWidget {
  const ListCoinsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CoinsCubit()..getCoinsData(),
      child: BlocConsumer<CoinsCubit, CoinsStates>(
        listener: (context, state) { },
        builder: (context, state) {
          List<dynamic> list = CoinsCubit.get(context).coins;
          return Scaffold(
            appBar: AppBar(
              title: const Padding(
                padding: EdgeInsetsDirectional.only(start: 8.0,top: 8.0),
                child: Text(
                  'Coins',
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsetsDirectional.only(top: 10.0,start: 20.0,end: 20.0),
              child: coinListBuilder(list),
            ),
          );
        },
      ),
    );
  }
}
