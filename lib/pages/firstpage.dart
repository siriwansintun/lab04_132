// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart'; //สร้างก่อนตลอด

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String foodRadio = "";
  bool foodcheck = false;
  bool foodcheck1 = false;
  bool foodcheck2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("siriwan132"),
        backgroundColor: const Color.fromARGB(255, 255, 137, 245),
      ),
      body: Column(
        children: [
          Menufood("ส้มตำ", "ส้มตำ", "40 บาท"),
          Menufood("ไก่ย่าง", "ไก่ย่าง", "25 บาท"),
          Menufood("ต้มแซ่บกระดูกหมู", "ต้มแซ่บกระดูกหมู", "80 บาท"),
          Menufood("ข้าวเหนียว", "ข้าวเหนียว", "10 บาท"),
          Menufood("ขนมจีน", "ขนมจีน", "10 บาท"),
          const Divider(),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("เพิ่ม กุ้ง +20 บาท"),
            value: foodcheck,
            onChanged: (value) {
              setState(() {
                foodcheck = value!;
              });
            },
          ),
           CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("เพิ่ม ปลาหมึก +20 บาท"),
            value: foodcheck1,
            onChanged: (value) {
              setState(() {
                foodcheck1 = value!;
              });
            },
          ),
           CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("เพิ่ม หมู +15 บาท"),
            value: foodcheck2,
            onChanged: (value) {
              setState(() {
                foodcheck2 = value!;
              });
            },
          ),
        ],
      ),
    );
  }

  RadioListTile<String> Menufood(String val, String title, String subtitle) {
    return RadioListTile(
      activeColor: Colors.red, //สีเวลาที่กดปุ่ม
      fillColor: const MaterialStatePropertyAll(Colors.red),
      title: Text(title),
      value: val,
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Color.fromARGB(255, 87, 218, 0),
        ),
      ),
      secondary: const Icon(Icons.shopping_bag_outlined, color: Colors.green),
      groupValue: foodRadio,
      onChanged: (value) {
        setState(() {
          foodRadio = value!;
        });
      },
    );
  }
}
