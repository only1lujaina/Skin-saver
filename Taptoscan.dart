import 'package:flutter/material.dart';
import 'package:camera/camera.dart';


class Taptoscan extends StatefulWidget{
  @override
  _TaptoscanState createState() => _TaptoscanState();
}


class _TaptoscanState extends State<Taptoscan> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  void _initializeCamera() async {
    final cameras = await availableCameras();

    _controller = CameraController(
      cameras.first,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Get Started',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              FutureBuilder<void>(
                future: _initializeControllerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    // If the Future is complete, display the preview.
                    return CameraPreview(_controller);
                  } else {
                    // Otherwise, display a loading indicator.
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
              Container(
                height: 167,
                width: 167,
                decoration: BoxDecoration(
                  color: Color(0x99a5bde1),
                  borderRadius: BorderRadius.circular(90),
                ),
                child:
                Image.asset('images/mdi_scan.png',
                  height: 94,
                  width: 94,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 208,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0x99a5bde1),
                  ),
                  onPressed: () async {
                    try {

                      await _initializeControllerFuture;


                      await _controller.takePicture();
                    }
                    catch (e) {
                      print(e);
                    }
                  },

                  child: const Text(
                    'Tap to Scan',
                    style:
                    TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70,),
              Container(
                height: 167,
                width: 167,
                decoration: BoxDecoration(
                  color: Color(0x99a5bde1),
                  borderRadius: BorderRadius.circular(90),
                ),
                child:
                Image.asset('images/gallery.png',
                  height: 94,
                  width: 94,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 208,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0x99a5bde1),
                  ),
                  onPressed: () async {
                    try {

                      await _initializeControllerFuture;


                      await _controller.takePicture();
                    }
                    catch (e) {
                      print(e);
                    }
                  },
                  child: const Text(
                    'Open from gallery',
                    style:
                    TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}