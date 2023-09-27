import 'package:flutter/material.dart';

class ProfileLogin extends StatelessWidget {
  final String username;

  const ProfileLogin({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โปรไฟล์ของ $username'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              // รูปโปรไฟล์ของผู้ใช้
              backgroundImage: AssetImage('assets/profile_image.png'),
            ),
            SizedBox(height: 20),
            Text(
              'ชื่อผู้ใช้: $username',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // กำหนดการทำงานเมื่อปุ่มแก้ไขถูกคลิก
                // ในที่นี้คุณสามารถเปิดหน้าแก้ไขรูปโปรไฟล์หรือทำอะไรก็ตามที่คุณต้องการ
              },
              child: Text('แก้ไขโปรไฟล์'),
            ),
          ],
        ),
      ),
    );
  }
}
