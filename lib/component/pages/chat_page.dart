import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      String imageUrl = '',
      String text = '',
      String time = '',
    }) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff505C6B),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff505C6B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble({
      String imageUrl = '',
      String text = '',
      String time = '',
    }) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff505C6B),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff505C6B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TextField(
            //   obscureText: true,
            //   decoration: InputDecoration(
            //     border: OutlinedBorder(),
            //     labelText: "type",
            //   ),
            // ),
            Text(
              "type message...",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Color(0xff999999)),
            ),
            Image.asset(
              "assets/btn_send.png",
              width: 35,
            )
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        height: 155,
        padding: EdgeInsets.only(
          top: 60,
          left: 30,
          bottom: 30,
          right: 40,
        ),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_profile.png',
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jakarta Fair",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "14, 209 members",
                  style: GoogleFonts.poppins(
                    color: Color(0xff808BA2),
                  ),
                )
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/icon_call.png",
              // width: 150,
            )
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                // height: 30,
                ),
            receiverBubble(
              imageUrl: 'assets/image_profile1.png',
              text: 'How are ya guys?',
              time: '2:30',
            ),
            receiverBubble(
              imageUrl: 'assets/image_profile2.png',
              text: 'Find here :P',
              time: '2:30',
            ),
            senderBubble(
              imageUrl: 'assets/image_profile3.png',
              text: 'Thinking about how to deal\nwith this client from hell...',
              time: '22:08',
            ),
            receiverBubble(
              imageUrl: 'assets/image_profile4.png',
              text: 'Love them',
              time: '23:11',
            ),
            senderBubble(
              imageUrl: 'assets/image_profile3.png',
              text: 'Thinking about how to deal\nwith this client from hell...',
              time: '22:08',
            ),
            receiverBubble(
              imageUrl: 'assets/image_profile4.png',
              text: 'Love them',
              time: '23:11',
            ),
            senderBubble(
              imageUrl: 'assets/image_profile3.png',
              text: 'Thinking about how to deal\nwith this client from hell...',
              time: '22:08',
            ),
            receiverBubble(
              imageUrl: 'assets/image_profile4.png',
              text: 'Love them',
              time: '23:11',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color(0xffF8FAFC),
      // backgroundColor: Colors.amber,
      body: Column(
        children: [
          header(),
          body(),
        ],
      ),
    );
  }
}
