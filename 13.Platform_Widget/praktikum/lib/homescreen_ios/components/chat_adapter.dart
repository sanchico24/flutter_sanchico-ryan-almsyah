import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praktikum12/models/chat.dart';

import '../../utils/color_util.dart';

class ChatAdapater extends StatelessWidget {
  final Chat chat;
  const ChatAdapater({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                      flex: 75,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            child: FlutterLogo(),
                          ),
                          message()
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 8, left: 8),
                    child: trailing(),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }

  Widget message() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chat.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
            chat.isGroup
                ? groupChat()
                : const SizedBox(
                    height: 5,
                  ),
            Text(
              chat.message,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.grey,
                decoration: TextDecoration.none,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget groupChat() {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          chat.lastChat,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }

  Widget trailing() {
    return chat.messNum != 0
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                chat.time,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    color: chat.status ? ColorUtil.primary() : Colors.grey[400],
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    '${chat.messNum}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        decoration: TextDecoration.none),
                  ),
                ),
              )
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                chat.time,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    decoration: TextDecoration.none),
              ),
              const SizedBox(
                height: 7,
              ),
            ],
          );
  }
}
