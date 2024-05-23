import 'package:flutter/material.dart';
import 'package:getme_online_task/app_constants/app_colors.dart';
import 'package:getme_online_task/app_constants/app_text_styles.dart';
import 'package:getme_online_task/views/widgets/custom_appbar.dart';
import 'package:getme_online_task/views/widgets/custom_card_view.dart';
import 'package:getme_online_task/views/widgets/vertical_list_tile.dart';

class PracticesTab extends StatefulWidget {
  const PracticesTab({super.key});

  @override
  State<PracticesTab> createState() => _PracticesTabState();
}

class _PracticesTabState extends State<PracticesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Practices", context: context),
      body: Column(children: [
        SizedBox(
          height: 210,
          child: ListView.separated(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            itemBuilder: (context, index) => CustomCardView(),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "All Practices",
              style: AppTextStyle.sectionTitle,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) => VerticalListTile(),
            separatorBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 20),
              child: Divider(
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
