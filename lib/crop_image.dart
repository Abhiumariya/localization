// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

enum Appstate { free, picked, cropped }

class Crop_image extends StatefulWidget {
  const Crop_image({super.key});

  @override
  State<Crop_image> createState() => _Crop_imageState();
}

class _Crop_imageState extends State<Crop_image> {
  late Appstate state;

  File? imageFile;

  @override
  void initState() {
    super.initState();
    state = Appstate.free;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Text("Crop_image"),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const MyHomePage()),
                // );
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     if (state == Appstate.free) {
      //       _pickedImage();
      //     } else if (state == Appstate.cropped) {
      //       _clearimage();
      //     }
      //   },
      //   child: buildButtonIcon(),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
                imageFile != null ? Image.file(imageFile!) : const SizedBox(),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  if (state == Appstate.free) {
                    _pickedImage();
                  } else if (state == Appstate.cropped) {
                    _clearimage();
                  }
                },
                child: buildButtonIcon()),
          ),
        ],
      ),
    );
  }

  buildButtonIcon() {
    if (state == Appstate.free) {
      return const Text("get image");
    } else if (state == Appstate.picked) {
    } else if (state == Appstate.cropped) {
      return const Text("clean");
    } else {
      return const SizedBox();
    }
  }

  Future _pickedImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    // await ImagePicker().pickImage(source: ImageSource.camera);

    imageFile = pickedImage != null ? File(pickedImage.path) : null;
    if (imageFile != null) {
      await crop_Image();
    }
  }

  // ignore: non_constant_identifier_names
  Future crop_Image() async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile!.path,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.greenAccent,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            hideBottomControls: true,
            lockAspectRatio: false),
      ],
    );
    if (croppedFile != null) {
      imageFile = File(croppedFile.path);
      setState(() {
        state = Appstate.cropped;
      });
    }
  }

  void _clearimage() {
    imageFile = null;
    setState(() {
      state = Appstate.free;
    });
  }
}
