import 'package:crypto_app/shared/components/components.dart';
import 'package:crypto_app/shared/cubit/cubit.dart';
import 'package:crypto_app/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinDetailScreen extends StatelessWidget {
  final id;
  const CoinDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CoinsCubit()..getCoinsDetails(id,'name'),
      //..getCoinsDetails(id, 'message')
      //         ..getCoinsDetails(id, 'open_source')
      //         ..getCoinsDetails(id, 'started_at')
      //         ..getCoinsDetails(id, 'development_status')
      //         ..getCoinsDetails(id, 'hardware_wallet')
      //         ..getCoinsDetails(id, 'proof_type')
      child: BlocConsumer<CoinsCubit, CoinsStates>(
         listener: (context, state) {},
          builder: (context, state) {
            var details = CoinsCubit.get(context).coinsDetails;
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  '${id}',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.info_outline),
                  )
                ],
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 0.7,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 80.0,
                    padding: const EdgeInsetsDirectional.only(start: 12.0,end: 12.0,top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: const Color(0xff3f3e45),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Center(
                                child: Image(
                                  image: NetworkImage('https://static.coinpaprika.com/coin/bnb-binance-coin/logo.png'),
                                  height: 40.0,
                                  width: 40.0,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'BTC',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Row(
                                  children: [
                                    const Text(
                                      'isActive',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                      child: Container(
                                        height: 10.0,
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text(
                                      'isNew',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(end: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Rank: 121',
                                style: TextStyle(
                                  color: Color(0xffF58965),
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'Coin',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff3f3e45),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ListView(
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      const Text(
                                        'Parent',
                                        style: TextStyle(
                                          color: Color(0xffF58965),
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      const SizedBox(height: 12.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Id: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Text(
                                            'eth-ethereum',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                                        child: Container(
                                          height: 0.5,
                                          width: double.infinity,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'name: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Text(
                                            'Ethereum',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                                        child: Container(
                                          height: 0.7,
                                          width: double.infinity,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'symbol: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Text(
                                            'ETH',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16.0,),
                            Expanded(
                              child: Container(
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff3f3e45),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ListView(
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      const Text(
                                        'Tags',
                                        style: TextStyle(
                                          color: Color(0xffF58965),
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      const SizedBox(height: 12.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Expanded(
                                            child: Text(
                                              'Id: ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              'blockchain-service',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                                        child: Container(
                                          height: 0.5,
                                          width: double.infinity,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Expanded(
                                            child: Text(
                                              'name: ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Blockchain Service',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                                        child: Container(
                                          height: 0.7,
                                          width: double.infinity,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'coin_counter: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Text(
                                            '160',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                                        child: Container(
                                          height: 0.7,
                                          width: double.infinity,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'ico_counter: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Text(
                                            '80',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff3f3e45),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ListView(
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      const Text(
                                        'Team',
                                        style: TextStyle(
                                          color: Color(0xffF58965),
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      const SizedBox(height: 12.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Id: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Text(
                                            'vitalik-buterin',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                                        child: Container(
                                          height: 0.5,
                                          width: double.infinity,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Expanded(
                                            child: Text(
                                              'name: ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Vitalik Buterin',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                                        child: Container(
                                          height: 0.7,
                                          width: double.infinity,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'position: ',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Text(
                                            'Author',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16.0,),
                            Expanded(
                              child: Container(
                                height: 340.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff3f3e45),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ListView(
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      const Text(
                                        'Links',
                                        style: TextStyle(
                                          color: Color(0xffF58965),
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      const SizedBox(height: 12.0),
                                      ListView(
                                        shrinkWrap: true,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: linkLogo('assets/facebook.png'),
                                              ),
                                              const SizedBox(width: 10.0),
                                              Expanded(
                                                child: linkLogo('assets/reddit-logo.png'),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10.0),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: linkLogo('assets/github.png'),
                                              ),
                                              const SizedBox(width: 10.0),
                                              Expanded(
                                                child: linkLogo('assets/globe.png'),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10.0),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: linkLogo('assets/youtube.png'),
                                              ),
                                              const SizedBox(width: 10.0),
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: (){},
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xff2a2a2f),
                                                      borderRadius: BorderRadius.circular(10.0),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'M',
                                                        style: TextStyle(
                                                            fontSize: 30.0
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10.0),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: linkLogo('assets/explore.png'),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
      ),
    );
  }
}
