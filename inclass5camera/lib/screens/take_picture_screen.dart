import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'display_picture_screen.dart';

class TakePictureScreen extends StatefulWidget {
  final List<CameraDescription> cameras;

  const TakePictureScreen({super.key, required this.cameras});

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late CameraDescription _selectedCamera;

  @override
  void initState() {
    super.initState();

    // Initially select the first camera.
    _selectedCamera = widget.cameras.first;

    // Initialize the camera controller.
    _controller = CameraController(_selectedCamera, ResolutionPreset.high);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSelectCamera(CameraDescription camera) async {
    setState(() {
      _selectedCamera = camera;
      _controller = CameraController(_selectedCamera, ResolutionPreset.high);
      _initializeControllerFuture = _controller.initialize();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take a picture'),
        actions: <Widget>[
          PopupMenuButton<CameraDescription>(
            onSelected: _onSelectCamera,
            itemBuilder: (BuildContext context) {
              return widget.cameras.map((CameraDescription camera) {
                return PopupMenuItem<CameraDescription>(
                  value: camera,
                  child: Text(camera.name),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;
            final image = await _controller.takePicture();
            if (!context.mounted) return;

            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(imagePath: image.path),
              ),
            );
          } catch (e) {
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}