import 'package:flutter/material.dart';
import 'package:xadicha_sulaymonova/utils/information_data.dart';

import '../../utils/assets.dart';

class Info extends StatelessWidget {
  const Info({super.key});

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
          SliverAppBar(
            title: Text(InformationData.biographyTitle),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(InformationData.biography),
            ),
          ),
        ],
      ),
    );
  }
}