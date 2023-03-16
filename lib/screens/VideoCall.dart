import 'package:flutter/material.dart';

class VideoCallScreen extends StatefulWidget {
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  bool _muted = false;
  bool _cameraOff = false;
  bool _speakerOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Video call view
          Center(
            child: Text(
              'Video Call View',
              style: TextStyle(fontSize: 24.0),
            ),
          ),

          // Controls panel
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(_muted ? Icons.mic_off : Icons.mic),
                    onPressed: () {
                      setState(() {
                        _muted = !_muted;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(_cameraOff ? Icons.videocam_off : Icons.videocam),
                    onPressed: () {
                      setState(() {
                        _cameraOff = !_cameraOff;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(_speakerOn ? Icons.volume_up : Icons.volume_off),
                    onPressed: () {
                      setState(() {
                        _speakerOn = !_speakerOn;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('End Call'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}