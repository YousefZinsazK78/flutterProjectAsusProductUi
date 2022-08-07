import 'package:flutter/material.dart';
import 'package:flutter_fourth_project/src/screens/chat/widget/app_bar_chat_screen.dart';
import 'package:flutter_fourth_project/src/screens/chat/widget/chat_message_item.dart';
import 'package:flutter_fourth_project/src/screens/chat/widget/chat_product_item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar
            const AppBarChatScreen(),
            //chat screen
            Expanded(
              child: Container(
                color: Colors.grey.shade200,
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: const [
                    ChatProductItem(),
                    ChatMessageItem(
                      isMeChatting: true,
                      messageBody:
                          'Hi mimin, is this laptop still have a stock? I wanna buy it 100 pcs.',
                    ),
                    ChatMessageItem(
                      isMeChatting: false,
                      messageBody: "Yes, it's still ready 200 pieces.",
                    ),
                    ChatMessageItem(
                      isMeChatting: true,
                      messageBody:
                          'Oh ya i see, so I buy 200 then.Thanks min:*',
                    ),
                    ChatMessageItem(
                      isMeChatting: true,
                      messageBody: 'Gimme bonus, ok?',
                    ),
                    ChatMessageItem(
                      isMeChatting: true,
                      messageBody: 'Ok syg:*',
                    ),
                  ],
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type something...',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue[900],
                        ),
                      ),
                      minLines: 1,
                      maxLines: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('snack'),
                        duration: const Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                        margin: const EdgeInsets.only(
                          bottom: 90.0,
                        ),
                        action: SnackBarAction(
                          label: 'ACTION',
                          onPressed: () {},
                        ),
                      ));
                    },
                    hoverColor: Colors.white,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(13),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.send_rounded,
                        size: 27,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
