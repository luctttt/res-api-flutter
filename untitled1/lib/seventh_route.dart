import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class SevenRoute extends StatefulWidget {
  const SevenRoute({Key? key}) : super(key: key);

  @override
  State<SevenRoute> createState() => _SevenRouteState();
}

class _SevenRouteState extends State<SevenRoute> {
  TextEditingController textController = TextEditingController();
  bool _folded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Search Bar Example'),
      ),
      body: Container(
        color: Colors.yellowAccent,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            AnimSearchBar(
              width: 400,
              textController: textController,
              onSuffixTap: () {
                textController.clear();
              },
              color: Colors.grey,
              helpText: "Search",
              autoFocus: true,
              closeSearchOnSuffixTap: true,
              animationDurationInMilli: 500,
              rtl: true,
            )
          ],
        ),
      ),
    );
  }
}
