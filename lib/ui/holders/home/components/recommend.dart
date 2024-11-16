import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/components/recommend_frame.dart';
import 'package:team_project/ui/holders/home/components/recommend_text.dart';


class Recommend extends StatelessWidget {
  const Recommend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: RecommendText(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      RecommendFrame(
                          recommendName: "정동심곡 바다부채길",
                          stars: 5.0,
                          imageUrl:
                              'https://cdn.telltrip.com/news/photo/202406/1801_9889_5144.jpg',),
                      RecommendFrame(
                          recommendName: "상하농원",
                          stars: 4.5,
                          imageUrl:
                          'https://cdn.telltrip.com/news/photo/202406/1801_9890_521.jpg'
                      ),
                      RecommendFrame(
                          recommendName: "다마고치",
                          stars: 5.0,
                          imageUrl:
                          'https://pbs.twimg.com/media/GbmC_lObgAAPHcX.jpg'),
                      RecommendFrame(
                          recommendName: "아케인 시즌2",
                          stars: 3.5,
                          imageUrl:
                          'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/cf2ccfc657525a41a3fc545dc4fe19a82ac04c04-1920x1080.png'
                      ),
                      RecommendFrame(
                          recommendName: "코리락쿠마 20주년",
                          stars: 4.0,
                          imageUrl:
                          'https://cdn2.colley.kr/colley_post_4212_title_adabbac1-f027-4d3d-9b58-e93f050d670e.png'
                      ),
                      RecommendFrame(
                          recommendName: "차린건 쥐뿔도 없지만",
                          stars: 4.5,
                          imageUrl:
                          'https://cdn.popga.co.kr/spot/993/main/0ce08254-88a5-49d1-b584-84db461847df_1730854345078.jpeg'
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
