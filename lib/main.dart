import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_pr = [
    Tweet(
      state: false,
      time: "1h",
      name: '@nangnamfon',
      avatar_url:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
      postText:
          ' สวัสดีเช้าวันจันทร์! ส่งงานช้าเพราะแก้ปัญหาไม่ได้ แต่ตอนนี้ได้แล้วค่ะ! ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: true,
      time: "40 minute",
      name: '@nangnamfon',
      avatar_url:
          'https://scontent.fbkk9-2.fna.fbcdn.net/v/t1.6435-9/80192195_1459908894174742_8584612152562679808_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEieVeVHGMH7BlxZJGxQCZ8rmSQj88AF1SuZJCPzwAXVJ9X6zuoyDOBqL202mv3Yl3TU9kgvhDjyaXaffkbxrbf&_nc_ohc=QkzF-ho0orkAX_HkDHV&_nc_oc=AQk7F6X7FgUMEUvkQT1f__ZuFJ5fs6pOR_QEPRdJp0FtcNlg_yLXH5gFMwAHeBp4vwHCjcnZX1acR6GRrWnyc3Tu&_nc_ht=scontent.fbkk9-2.fna&oh=00_AfCFt3u1l0_chW6mWFGHtwAgTgteMVzXlO7YHHU35e6Heg&oe=63AAC0E1',
      postText:
          'สวัสดีค่ะ ชื่อนางสาว สวรรยา วินท์ชินโภค ชื่อเล่นน้ำฝน อายุ 21 ปี ค่ะ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: true,
      time: "21 minute",
      name: '@nangnamfon',
      avatar_url:
          'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.6435-9/151971592_1839882142844080_8054985572327929798_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeGx6x_dsEdMv4c_LBri0FRSk2dLrfG6lB-TZ0ut8bqUHzk-CXgoGHUJuhs19iKOJTD4Hi3bPiB-Z27ex8PawMgG&_nc_ohc=NhlstrcaIq8AX83PyYU&_nc_ht=scontent.fbkk12-1.fna&oh=00_AfB-6KqL1OuqcBcls8W-alf_JJ7OjwzLG4yoA-Lkgflbxw&oe=63AAC0EA',
      postText:
          'ชื่อว่าน้ำฝน เพราะแม่คลอดตอนฝนตกค่ะ พ่อเป็นเชื้อจีนแต่แม่เชื้อไทย พ่อตั้งอีกชื่อ แต่แม่ชนะค่ะ!',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: false,
      time: "12 minute",
      name: '@nangnamfon',
      avatar_url:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
      postText: 'อยากได้เกรดดีๆค่ะ แต่น่าจะตายที่วิชานี้ หนูเสียใจค่ะ! T--T',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: true,
      time: "6 minute",
      name: '@nangnamfon',
      avatar_url:
          'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.6435-9/91466718_1555657854599845_5419690115515547648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeH6tkpcabQVMEgBTxgPlsy9Y653xT3vlGpjrnfFPe-Uau2EtBWFN8qb-4XdBdRQwK0IPEUCKdH05lHuGj2oQbsB&_nc_ohc=77vXaS7cPZUAX9j7rSY&_nc_ht=scontent.fbkk12-1.fna&oh=00_AfAdKTX0gSdXEtNpmaSkPwA3XhNd82YCioXDmy7Poj92Yg&oe=63AAC39B',
      postText:
          'คนนี้เพื่อนหนูค่ะ ถ่ายด้วยกันแต่หนูรู้สึกหนูสวยกว่าค่ะ อาจารย์คิดงั้นไหมคะ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: true,
      time: "1 minute",
      name: '@nangnamfon',
      avatar_url:
          'https://scontent.fbkk8-2.fna.fbcdn.net/v/t39.30808-6/317446472_2363457220486567_4093805048722934983_n.jpg?stp=cp6_dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHdVJFzYo1LVEJN6bcdXTPiIMARIJnVkA8gwBEgmdWQD3GoPMJj_tMzisSanwXmP49Iij2VkhGN6hVeAqGrjxwa&_nc_ohc=C68E9PP-xq0AX_btcGB&_nc_ht=scontent.fbkk8-2.fna&oh=00_AfAnBFjNxBQzSBDb6oh1cSmk4D0Z7dxzLxzeEiJ0DpocaA&oe=6387D919',
      postText:
          'ตอนหนูทำงานอาจารย์ไม่ทัน หนูเปิดเพลงนี้ฟังแล้วพอเพลงจบหนูก็นั่งเครียดต่อค่ะ หนูปวดใจ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: true,
      time: "29s",
      name: '@nangnamfon',
      avatar_url:
          'https://scontent.fbkk12-4.fna.fbcdn.net/v/t39.30808-6/317444524_2363461567152799_4580835689686735530_n.jpg?stp=cp6_dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeH34793HCTCydCtvy6-TZqwB_f7mMhYlQAH9_uYyFiVAFu9K-GtjSaXNIHEoWLEsHnYmdk9xFd-beUczDJrLM5W&_nc_ohc=Z-P_qhoDwPMAX-m3S32&_nc_ht=scontent.fbkk12-4.fna&oh=00_AfBw8wdc7HLXgFRSHfyO6vbL8iR48gsVR4L-fmamVI4YKg&oe=6387722F',
      postText:
          'หนูส่งงานอาจารย์เสร็จหนูจะไปดูหนังเรื่องนี้ค่ะ อาจารย์เคยดูไหมคะ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: true,
      time: "3s",
      name: '@nangnamfon',
      avatar_url:
          'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.6435-9/132706836_1795748900590738_5457611472951077230_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFXJYfsLYBICvtMl0-cQlQBziB9HWldnmnOIH0daV2eafsQ8UDre6374ZzikErILrPXj4r6UvnMGTOO6XWI3fl9&_nc_ohc=JsLuMNmBeToAX__Pvpg&_nc_ht=scontent.fbkk12-1.fna&oh=00_AfBi4xDkmdyix_KyHCDI1phS3Y8KhPytEuRxyTwwkJDLxQ&oe=63AAE516',
      postText:
          'รูปนี้หนูไปเชียงใหม่ค่ะ แม่ถ่ายให้แต่แม่เสียแล้วค่ะ ร้องไห้ทุกคืนแต่ตอนนี้สดใสขึ้นแล้วค่ะ :)',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: false,
      time: "1s",
      name: '@nangnamfon',
      avatar_url: '',
      postText: 'ขอให้เจอสิ่งดีๆกับชีวิตนะคะ',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
    Tweet(
      state: false,
      time: "0s",
      name: '@nangnamfon',
      avatar_url: '',
      postText: 'แล้วก็ขอให้หนูได้เกรดดีๆด้วยค่ะ สาธุนะคะ แหะๆ ^-----^',
      avatar_pro:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/78706785_1444993148999650_6571100818131386368_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeE65_7_HzsMCaYWb6qZ9FiOIu83c2UfTPIi7zdzZR9M8pwmuSUkBLqT8j5b6DNrfG46QzrHH_FDnYsNrd5o-MfK&_nc_ohc=aao7DZO5yqcAX-Equ5M&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfAZbWJ9UWqw8uAG4RMjt84RLrsJ-RaKWPg0GDlUudNygQ&oe=63AAC18A'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Twitter",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.voicemail, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.plus),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_pr[9]);
            } else {
              tweetList.insert(0, tweetList_pr[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
