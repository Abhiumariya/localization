// ignore: file_names
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/crop_image.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageCrop extends StatefulWidget {
  const ImageCrop({super.key});

  @override
  State<ImageCrop> createState() => _ImageCropState();
}

class _ImageCropState extends State<ImageCrop> {
  late Appstate state;

  @override
  void initState() {
    super.initState();
    state = Appstate.free;
  }

  List<File> selectedImages = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    // display image selected from gallery
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple Images Select'),
        backgroundColor: Colors.green,
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: const Text('Select Image '),
                onPressed: () {
                  if (state == Appstate.free) {
                    getImages();
                  } else if (state == Appstate.cropped) {
                    // _clearimage();
                  }
                },
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 400.0,
                child: selectedImages.isEmpty
                    ? const Center(child: Text(''))
                    : GridView.builder(
                        itemCount: selectedImages.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: kIsWeb
                                  ? Image.network(selectedImages[index].path)
                                  : GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          PickedFile;
                                        });
                                      },
                                      child:
                                          Image.file(selectedImages[index])));
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
      () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        }
      },
    );
  }
}

Future<CroppedFile?> cropImage(pickedFile, [bool? isFreeCrop]) async {
// import 'package:image_cropper/image_cropper.dart';
  return await ImageCropper().cropImage(
    sourcePath: pickedFile,
    aspectRatioPresets: (isFreeCrop ?? false)
        ? [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ]
        : [],
    uiSettings: [
      AndroidUiSettings(
          // toolbarColor: AppColors.primarycolor,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: !(isFreeCrop ?? false)),
    ],
  );
}
