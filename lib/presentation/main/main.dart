import 'package:flutter/material.dart';
import 'package:xadicha_sulaymonova/utils/information_data.dart';

import '../../utils/assets.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            actions: [
              Icon(Icons.dark_mode),
              SizedBox(width: 10),
            ],
            title: Text('Xadicha Sulaymonova'),
            floating: true,
            pinned: true,
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: Text(InformationData.about),
                ),
                const SizedBox(width: 16),
                Image.asset(Assets.xadichaSulaymonovaPng, height: size.width * 0.4, fit: BoxFit.cover),
              ],
            ),
          )),
          const SliverAppBar(
            title: Text('Biografiyasi'),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(InformationData.biography),
            ),
          ),
          const SliverAppBar(
            title: Text('Ilmiy-pedagogik faoliyat'),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(InformationData.scientificActivity),
            ),
          ),
        ],
      ),
    );
  }
}