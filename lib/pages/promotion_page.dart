import 'package:flutter/material.dart';
import 'package:widget_store/widgets/promotion_card.dart';
import 'package:widget_store/widgets/reward_card.dart';
import 'package:widget_store/widgets/view_all_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  List eventData = [
    {'image': 'https://picsum.photos/id/102/500/300'},
    {'image': 'https://picsum.photos/id/1003/500/300'},
    {'image': 'https://picsum.photos/id/1011/500/300'},
    {'image': 'https://picsum.photos/id/108/500/300'},
  ];

  List promotionData = [
    {
      'title': 'โปรโมชั่นสำหรับคนรักสุขภาพ (พิเศษส่วนลดสูงสุดมากถึง 50%)',
      'image': 'images/1.png',
      'from': 'MQDC',
    },
    {
      'title': 'เบเกอรี่สดใหม่ พร้อมเสิร์ฟให้กับสมาชิกองค์กร ที่ CampUs',
      'image': 'images/2.png',
      'from': 'DTGO',
    },
    {
      'title': 'ใหม่ Lemon Cheese Cake วางขายแล้วที่ DTGO Cafe',
      'image': 'images/3.png',
      'from': 'DTGO',
    },
    {
      'title': 'วางขายแล้ว! เมนูพิเศษประจำเดือน ลองด่วนจำนวนกัด',
      'image': 'images/4.png',
      'from': 'DTGO',
    },
  ];

  List rewardData = [
    {
      'title': 'ส่วนลดค่าส่วนกลาง 5%',
      'image': 'images/6.png',
      'from': 'MQDC',
      'price': '1000 XCash',
      'point': 'ใช้สิทธิ์นี้',
    },
    {
      'title': 'เครื่องดื่ม 22 onz.',
      'image': 'images/7.png',
      'from': 'MQDC',
      'price': 'FREE',
      'point': 'ใช้สิทธิ์นี้',
    },
    {
      'title': 'ส่วนลดเบเกอรี่ 50 บาท',
      'image': 'images/2.png',
      'from': 'MQDC',
      'price': 'FREE',
      'point': 'ใช้สิทธิ์นี้',
    },
    {
      'title': 'นวดเท้า 1 ชม.',
      'image': 'images/8.png',
      'from': 'MQDC',
      'price': 'FREE',
      'point': 'ใช้สิทธิ์นี้',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final controller = PageController(
        viewportFraction: 0.80, keepPage: true, initialPage: 999);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promotion & Event'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: PageView.builder(
                      controller: controller,
                      itemBuilder: (context, index) {
                        return FittedBox(
                          fit: BoxFit.contain,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              eventData[index % eventData.length]['image'],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: eventData.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.teal,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ],
              ),
            ),
            ViewAllBar(
              title: 'แลกของรางวัล',
              onPressed: () {},
            ),
            SizedBox(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: rewardData.length,
                itemBuilder: (context, index) {
                  return RewardCard(
                    image: rewardData[index]['image'],
                    title: rewardData[index]['title'],
                    from: rewardData[index]['from'],
                    price: rewardData[index]['price'],
                    point: rewardData[index]['point'],
                  );
                },
              ),
            ),
            ViewAllBar(
              title: 'กิจกรรม และ อีเว้นท์ ตอนนี้',
              onPressed: () {},
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: promotionData.length,
                itemBuilder: (context, index) {
                  return PromotionCard(
                    image: promotionData[index]['image'],
                    title: promotionData[index]['title'],
                    from: promotionData[index]['from'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
