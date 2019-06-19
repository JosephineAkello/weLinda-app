import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';

class BriefVideos extends StatefulWidget {
  createState() {
    return BriefVideosState();
  }
}

class BriefVideosState extends State<BriefVideos> {
  VideoPlayerController _controller;


  @override
  void deactivate() {
    // This pauses video while navigating to next page.
    //_controller.pause();
    super.deactivate();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jua More'),
      ),
      body: ListView(children: [
        YoutubePlayer(
        context: context,
        source: "https://www.youtube.com/watch?v=pknYqbanlt0",
        quality: YoutubeQuality.MEDIUM,
        callbackController: (controller) {
          _controller = controller;
        },
      ),
        ListTile(
          title: Text('Helping a Friend or Family Member'),
          subtitle: Text(
              'When you know or suspect that your friend or family member has experienced sexual violence, you may feel helpless or uncertain of what to do or say. We recognize that this can feel overwhelming to you, and we want to give you some suggestions for how you can support someone who shares with you that they have experienced gender-based violence.'),
        ),
        ListTile(
          title: Text('What one should do'),
          subtitle: Text(
              ' Listen with compassion and practice non-judgment.Remain calm- even if you feel emotional (which is normal) it’s important for you to stop yourself from becoming too activated.Understand that everyone responds differently to trauma. While there are some common responses, every survivor is unique.'),
        ),
        ListTile(
          title: Text('What one should not do'),
          subtitle: Text(
              'Judge, scold, criticize, blame or try to teach them how to be “safer”.Over emote or “freak out”. Make sure the focus is on the survivor’s emotions. (But do take care of your own emotions by identifying your own support and resources.) Ask about details or ask them to talk about it if they didn’t bring it up.Tell them what to do, what you would do, or what you think they should do. Never insist on reporting or force them to get treatment.'),
        ),
        ListTile(
          title: Text(
            'DIAL *384*220# TO SUBSCRIBE TO WeLinda App',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
