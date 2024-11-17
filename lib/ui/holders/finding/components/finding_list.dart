import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'finding_list_frame.dart';

class FindingList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FindingListFrame(
                title: '동행 구해요',
                destination: '제주도',
                period: '11.21 ~ 11.27(6박7일)',
                people: 3,
                img: 'https://cdn.ijejutoday.com/news/photo/202409/305775_313287_2611.jpg'
            ),
            FindingListFrame(
                title: '경주 동행 구합니다',
                destination: '경주',
                period: '12.19 ~ 12.21(2박3일)',
                people: 4,
                img: 'https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/73968eea-cbbe-49cd-b001-353e9e962cbf.jpeg'
            ),
            FindingListFrame(
                title: '부산',
                destination: '부산',
                period: '12.31 ~ 1.1(1박2일)',
                people: 3,
                img: 'https://www.visitbusan.net/uploadImgs/files/cntnts/20191229160529389'
            ),
            FindingListFrame(
                title: '서울 여행 동행 구함',
                destination: '서울',
                period: '1.24 ~ 11.27(3박4일)',
                people: 3,
                img: 'https://img1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/g16y/image/BD9C25KICxp8P1My-4FG5hjUio8.jpg'
            ),
            FindingListFrame(
                title: '2월말 강릉 여행 동행 구해요',
                destination: '강릉',
                period: '2.23 ~ 2.26(3박4일)',
                people: 5,
                img: 'https://www.gtdc.or.kr/dzSmart/upfiles//site/2024May/20/16d0487ba2f051f9e78cd5be3f1649a4_1715970797.jpg'
            ),

          ],
        ),
      ),
    );
  }
}
