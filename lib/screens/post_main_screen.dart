import 'package:flutter/material.dart';
import 'package:travel_app/entity/post_entity.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/widget/post_card_widget.dart';

import '../widget/account_card_widget.dart';

class PostMainScreen extends StatefulWidget {
  const PostMainScreen({super.key});

  @override
  State<PostMainScreen> createState() => _PostMainScreenState();
}

class _PostMainScreenState extends State<PostMainScreen> {
  List<PostEntity> listEntity = [
    PostEntity(
        widget: Image.asset(Assets.tAvatarFaceIcon),
        city: 'Samarqand',
        photo: Assets.tSamCityImage,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(
        widget: Image.asset(Assets.tAvatarFaceIcon),
        city: 'Minsk',
        photo: Assets.tMinskImage,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(
        widget: Image.asset(Assets.tAvatarFaceIcon),
        city: 'NewYork',
        photo: Assets.tNewYorkImage,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(
        widget: Image.asset(Assets.tAvatarFaceIcon),
        city: 'Tashkent',
        photo: Assets.tTashkentImage,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                const AccountCardWidget(image: Assets.tGirlIcon, name: "Samms"),
                const SizedBox(height: 5),
                Expanded(
                  child: ListView.builder(
                    itemCount: listEntity.length,
                    itemBuilder: (context, index) {
                      final entity = listEntity[index];
                      return PostCardWidget(postEntity: entity);
                    },
                  ),
                  // child: SingleChildScrollView(
                  //   scrollDirection: Axis.vertical,
                  //   child: Column(children: [
                  //     ...List.generate(
                  //         listEntity.length,
                  //         (index) => PostCardWidget())
                  //   ]),
                  // ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
