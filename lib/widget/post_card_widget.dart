import 'package:flutter/material.dart';
import 'package:travel_app/entity/post_entity.dart';

class PostCardWidget extends StatelessWidget {
  final PostEntity postEntity;
  const PostCardWidget({
    Key? key,
    required this.postEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 16, bottom: 16),
      child: Container(
        height: 424,
        width: 358,
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xffB1B5C3)))),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Center(child: postEntity.widget),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Post in',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      Text(
                        postEntity.city,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(100),
                  child: Ink(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffF4F5F6)),
                    height: 40,
                    width: 40,
                    child: const Icon(Icons.arrow_forward),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            Container(
              height: 200,
              width: 334,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Image.asset(postEntity.photo, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(postEntity.description,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                )),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffDAFEE4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 18, right: 18, top: 12, bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 16,
                                width: 16,
                                child: Icon(Icons.star,
                                    size: 16, color: Color(0xff24B24C))),
                            Padding(
                              padding: EdgeInsets.only(left: 12),
                              child: Text("Save",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff24B24C))),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 40,
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE6E8EC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 18, right: 18, top: 12, bottom: 12),
                        child: Text("Comment",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
