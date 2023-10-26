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
    PostEntity(widget: const Icon(Icons.person), city: 'Smarqand', photo: Assets.tHomeImage, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(widget: const Icon(Icons.person), city: 'Amerika', photo: Assets.tHomeImage, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(widget: const Icon(Icons.person), city: 'NewTork', photo: Assets.tHomeImage, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(widget: const Icon(Icons.person), city: 'Tashkent', photo: Assets.tHomeImage, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(widget: const Icon(Icons.person), city: 'Minsk', photo: Assets.tHomeImage, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(widget: const Icon(Icons.person), city: 'Moscow', photo: Assets.tHomeImage, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(widget: const Icon(Icons.person), city: 'Italia', photo: Assets.tHomeImage, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    PostEntity(widget: const Icon(Icons.person), city: 'USA', photo: Assets.tHomeImage, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Column(
              children: [
                const AccountCardWidget(image: Assets.tHomeImage, name: "Samms"),

                Expanded(
                  child: ListView.builder(
                    itemCount: listEntity.length,
                      itemBuilder: (context, index) {
                        final entity = listEntity[index];
                        return PostCardWidget(postEntity: entity);
                      },),
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
