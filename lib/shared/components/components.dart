import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:crypto_app/modules/coinDetailScreen.dart';
import 'package:flutter/material.dart';

Widget buildCoinCard(context,item,) => GestureDetector(
  onTap: (){
    // DioHelper.getData(
    //     url: 'coins',
    //     query: {},
    // ).then((value) {
    //   print(value.data[10]);
    // });
    // print(CoinsCubit.get(context).coins.length);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CoinDetailScreen(id: item['id']),
      ),
    );
  },
  child: Container(
    height: 100.0,
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    decoration: BoxDecoration(
      color: const Color(0xff3f3e45),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: const Color(0xff2a2a2f),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  '${item['symbol']}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20.0),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${item['name']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4.0),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8.0),
                      child: Text(
                        '${item['type']}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Active',
              style: TextStyle(
                color: item['is_active']? const Color(0xffCAF99C):const Color(0xffF58965),
              ),
            ),
            Text(
              'New',
              style: TextStyle(
                color: item['is_new']? const Color(0xffCAF99C):const Color(0xffF58965),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
);

Widget coinListBuilder(List<dynamic> list) => ConditionalBuilder(
  condition: list.isNotEmpty,
  builder: (context) => ListView.separated(
    physics: const BouncingScrollPhysics(),
    itemBuilder: (context, index) => buildCoinCard(context,list[index]),
    separatorBuilder: (context, index) => const SizedBox(height: 16.0),
    itemCount: list.length,
  ),
  fallback: (context) => const Center(child: CircularProgressIndicator()),
);

Widget linkLogo(String imageUrl) => GestureDetector(
  onTap: (){},
  child: Container(
    width: 60.0,
    height: 60.0,
    decoration: BoxDecoration(
      color: const Color(0xff2a2a2f),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Center(
      child: Image(
          image: AssetImage(imageUrl),
        height: 40.0,
      ),
    ),
  ),
);