import 'package:flutter/material.dart';
import 'package:voicemate/widgets/feature_box.dart';
import 'package:voicemate/widgets/pallet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adhin"),
        leading: const Icon(Icons.menu),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Pallete.assistantCircleColor,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image:
                          AssetImage("lib/assets/image/virtualAssistant.png"),
                    )),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin:
                const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
            decoration: BoxDecoration(
                border: Border.all(color: Pallete.borderColor),
                borderRadius:
                    BorderRadius.circular(20).copyWith(topLeft: Radius.zero)),
            child: const Text(
              "Good Morning, what can i do for you?",
              style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                  fontFamily: "Cera Pro"),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10, left: 22),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Here are few features",
              style: TextStyle(
                  fontFamily: "Cera Pro",
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const FeatureBox(
            color: Pallete.firstSuggestionBoxColor,
            headertext: "Chat Gpt",
            descriptiontext:
                "A smarted way to stay organize and informed with ChatGPT",
          )
        ],
      )),
    );
  }
}
