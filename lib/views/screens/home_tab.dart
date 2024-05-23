import 'package:flutter/material.dart';
import 'package:getme_online_task/app_constants/app_assets.dart';
import 'package:getme_online_task/app_constants/app_text_styles.dart';
import 'package:getme_online_task/views/screens/popular_list_tab.dart';
import 'package:getme_online_task/views/widgets/horizontal_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.header), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: AppTextStyle.sectionTitle,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PopularListPage(),
                    ),
                  );
                },
                child: Text(
                  "See All",
                  style: AppTextStyle.sectionOptions,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 165,
          child: ListView.separated(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            itemBuilder: (context, index) => HorizontalTile(),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 165,
          child: ListView.separated(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            itemBuilder: (context, index) => HorizontalTile(),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
          ),
        )
      ],
    );
  }
}
