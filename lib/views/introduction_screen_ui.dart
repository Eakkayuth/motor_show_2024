import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/show_car_ui.dart';

class IntroductiomScreenUI extends StatefulWidget {
  const IntroductiomScreenUI({super.key});

  @override
  State<IntroductiomScreenUI> createState() => _IntroductiomScreenUIState();
}

class _IntroductiomScreenUIState extends State<IntroductiomScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: IntroductionScreen(
        pages: [
          PageViewModel(
            image: Image.asset(
              'assets/images/toyotaYA.jpg',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'TOYOTA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'yaris ativ',
                  style: TextStyle(                   
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'YARIS ATIV ใหม่ คือ การออกแบบให้เป็นรถ Fastback ที่ทรงพลัง และสง่างาม โดยติดตั้งไฟเลี้ยว Sequential และไฟหน้าแบบ LED ซึ่งรถในสไตล์ที่มีเสน่ห์นี้ถือได้ว่าเป็น Hi-light ที่ได้รับแรงบันดาลใจมาจากรถยุโรป ในขณะเดียวกันยังคงไว้ซึ่งพื้นที่ภายในห้องโดยสาร และพื้นที่เก็บสัมภาระอันกว้างขวาง',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.asset(
              'assets/images/MitsuXP.png',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'MITSUBISHI',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'xpander',
                  style: TextStyle(                   
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'ระบบเกียร์อัตโนมัติ ECO-Dynamic CVT เร่งแซงได้ดั่งใจ และราบรื่น ด้วยระบบเกียร์อัตโนมัติ ECO-Dynamic CVT ตอบสนองการทำงานระหว่างเครื่องยนต์ได้อย่างรวดเร็ว ราบรื่น และประหยัดน้ำมัน ระบบเบรกมือไฟฟ้าอัตโนมัติ พร้อมระบบ Brake Auto Hold',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.asset(
              'assets/images/hondaCV.png',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'HONDA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'civic',
                  style: TextStyle(                   
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'Honda Civic ยกขีดความสามารถในการขับขี่ให้ทุกเส้นทางเป็นของคุณ ด้วยการออกแบบที่ไร้ขอบเขตด้วยกำลังมอเตอร์ไฟฟ้าที่มากถึง 135 กิโลวัตต์ ที่มอบแรงบิดสูงสุดถึง 315 นิวตัน-เมตร และระบบเกียร์ E-CVT ที่เพิ่มความคล่องตัวและนิ่มนวลตลอดเส้นทาง',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.asset(
              'assets/images/teslaModel3.png',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'TESLA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'Model3',
                  style: TextStyle(                   
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'Tesla Model3 เป็นการยกระดับการใช้รถด้วยการเปลี่ยนจากรถใช้น้ำมันเป็นรถไฟฟ้า มีทั้งรุ่น Long Range และ Standrad Range มีฮาร์ดแวร์ที่ขับเคลื่อนด้วยตัวเองเต็มรูปแบบโดยมีการอัปเดตซอฟต์แวร์เป็นระยะเพื่อเพิ่มฟังก์ชันการทำงาน',
              textAlign: TextAlign.center,
            ),
          ),
        
        ],
        done: Text(
          'หน้าหลัก',
          style: TextStyle(color: Color.fromARGB(255, 2, 3, 15)),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ShowCarUI(),
          ),
        ),
        next: Icon(
          Icons.arrow_right_alt,
          color: Colors.black,
        ),
        nextFlex: 0,
        showSkipButton: true,
        skip: Text(
          'skip',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 1, 9),
          ),
        ),
        dotsDecorator: DotsDecorator(
          color: Color.fromARGB(255, 3, 3, 4),
          activeColor: Colors.grey,
          activeSize: Size(
            MediaQuery.of(context).size.width * 0.055,
            MediaQuery.of(context).size.width * 0.025,
          ),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
        infiniteAutoScroll: true,
        autoScrollDuration: 2000,
      ),
    );
  }
}