import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoApp extends StatefulWidget {
  final String video;
  const VideoApp({Key? key,required this.video}) : super(key: key);

  @override
  State<VideoApp> createState() => _VideoAppState();
}
 String video='';
class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _videoPlayerController,
      _videoPlayerController2,
      _videoPlayerController3;

  late CustomVideoPlayerController _customVideoPlayerController;
  late CustomVideoPlayerWebController _customVideoPlayerWebController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
  const CustomVideoPlayerSettings(showSeekButtons: true);

  final CustomVideoPlayerWebSettings _customVideoPlayerWebSettings =
  CustomVideoPlayerWebSettings(
    src:video,
  );

  @override
  void initState() {
    setState(() {
      video= widget.video;
    });
    super.initState();

    _videoPlayerController = VideoPlayerController.network(
      widget.video,
    )..initialize().then((value) => setState(() {}));

    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _videoPlayerController,
      customVideoPlayerSettings: _customVideoPlayerSettings,
      additionalVideoSources: {
        "240p": _videoPlayerController2,
        "480p": _videoPlayerController3,
        "720p": _videoPlayerController,
      },
    );

    _customVideoPlayerWebController = CustomVideoPlayerWebController(
      webVideoPlayerSettings: _customVideoPlayerWebSettings,
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    _videoPlayerController.dispose();
    _videoPlayerController2.dispose();
    _videoPlayerController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _customVideoPlayerController.dispose();
        return true;
      },
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: ImageIcon(
              AssetImage("assets/ArrowLeft.png"),
              color: CupertinoColors.black,
              size: 22.sp,
            ),
          ),
          middle: Text(
            "Course Details Eg: Flutter video",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 12.sp,
                color: CupertinoColors.black,
              ),
            ),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              kIsWeb
                  ? Expanded(
                child: CustomVideoPlayerWeb(
                  customVideoPlayerWebController:
                  _customVideoPlayerWebController,
                ),
              )
                  : CustomVideoPlayer(
                customVideoPlayerController: _customVideoPlayerController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}





