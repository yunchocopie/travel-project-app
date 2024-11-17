import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/finding/finding_detail/components/finding_detail_appbar.dart';
import 'package:team_project/ui/holders/finding/finding_detail/components/finding_detail_body.dart';

class FindingDetailPage extends StatefulWidget {
  const FindingDetailPage({Key? key});

  @override
  State<FindingDetailPage> createState() => _FindingDetailPageState();
}

class _FindingDetailPageState extends State<FindingDetailPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                FindingDetailAppbar(screenHeight: screenHeight),
              ];
            },
            body: FindingDetailBody(),
          ),
          // PopupDetailBottomButton(),
        ],
      ),
        bottomNavigationBar: _buildBottomAppBar(context)
    );
  }
}
BottomAppBar _buildBottomAppBar(BuildContext context) {
  return BottomAppBar(
    elevation: 0,
    height: 90,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xDB06AB73),
      ),
      child: InkWell(
        splashColor: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (_) => MenuPage(widget.storeId)));
        },
        child: Center(
          child: Text(
            "참여 신청하기",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    ),
  );
}