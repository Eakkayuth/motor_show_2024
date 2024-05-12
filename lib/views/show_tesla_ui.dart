import 'package:flutter/material.dart';

class ShowTeslaUI extends StatefulWidget {
  const ShowTeslaUI({super.key});

  @override
  State<ShowTeslaUI> createState() => _ShowTeslaUIState();
}

class _ShowTeslaUIState extends State<ShowTeslaUI> {
  List<String> _showmanu1 = [
    'assets/images/teslaModel3_1.png',
    'assets/images/teslaModelY1.png',
  ];
  List<String> _showmanu2 = [
    'assets/images/teslaCybertruck1.png',
  ];
  List<String> _showText1 = [
    'Model 3\nราคา 2,149,000 บาท',
    'Model Y\nราคา 2,049,000 บาท',
  ];
  List<String> _showText2 = [
    'Cybertruck \nราคา 2,152,000 บาทโดยประมาณเพราะยังไม่เข้าไทย'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
              ),
              child: Row(
                children: [
                  Text(
                    'รถเก๋ง',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: ListView.builder(
                itemCount: _showmanu1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          _showmanu1[index],
                          height: 100.0, // จำกัดขนาดรูปภาพ
                          fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                        ),
                        SizedBox(height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                        Text(
                          _showText1[index], // แสดงข้อความสำหรับแต่ละรูป
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16, // ขนาดข้อความ
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
              ),
              child: Row(
                children: [
                  Text(
                    'รถกระบะ',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: ListView.builder(
                itemCount: _showmanu2.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          _showmanu2[index],
                          height: 100.0, // จำกัดขนาดรูปภาพ
                          fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                        ),
                        SizedBox(height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                        Text(
                          _showText2[index], // แสดงข้อความสำหรับแต่ละรูป
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16, // ขนาดข้อความ
                          ),
                        ),
                      ],
                    ),
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
