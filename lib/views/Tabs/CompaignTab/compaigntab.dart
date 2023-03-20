import 'package:flutter/material.dart';
import 'package:custom_floating_action_button/custom_floating_action_button.dart';
import 'package:flutter/services.dart';

class CompaignScreen extends StatefulWidget {
  const CompaignScreen({super.key});

  @override
  State<CompaignScreen> createState() => _CompaignScreenState();
}

class _CompaignScreenState extends State<CompaignScreen> {
  TextEditingController linkInputController = TextEditingController();
  Future<void> inputLinkDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const Text("Paste your Youtube link Below:"),
            actions: [
              TextField(
                controller: linkInputController,
                decoration: const InputDecoration(
                    hintText: "Paste your Youtube link here"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.red)),
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontSize: 17),
                      )),
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return CustomFloatingActionButton(
      body: Scaffold(
        body: Center(
          child: SizedBox(
            width: width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.home,
                  size: 85,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "No Campaign",
                  style: TextStyle(fontSize: 27),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Your campaign appear here. Click add button to create campaign to get subcribers for your channel.",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
      openFloatingActionButton: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      closeFloatingActionButton: const CircleAvatar(
        radius: 30,
        backgroundColor: Colors.red,
        child: Icon(
          Icons.close,
          color: Colors.white,
          size: 30,
        ),
      ),
      type: CustomFloatingActionButtonType.circular,
      spaceFromBottom: 70,
      options: [
        InkWell(
          onTap: () async {
            await inputLinkDialog(context);
          },
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.thumb_up,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.group,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        // CircleAvatar(
        //   radius: 20,
        //   backgroundColor: Colors.transparent,
        //   child: Icon(
        //     Icons.plus_one,
        //     color: Colors.transparent,
        //     size: 0,
        //   ),
        // ),
        // CircleAvatar(
        //   radius: 20,
        //   backgroundColor: Colors.transparent,
        //   child: Icon(
        //     Icons.add,
        //     color: Colors.transparent,
        //     size: 0,
        //   ),
        // ),
      ],
    );
  }
}
