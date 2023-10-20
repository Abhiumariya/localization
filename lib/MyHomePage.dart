// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   // const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// // String stringResponse = stringResponse;
// Map mapResponse = mapResponse;
// // Map dataResponse = dataResponse;
// List listResponse = listResponse;

// class _MyHomePageState extends State<MyHomePage> {
//   Future apicall() async {
//     http.Response response;
//     response = await http.get(Uri.parse("https://reqres.in/api/users?delay=3"));
//     if (response.statusCode == 200) {
//       setState(() {
//         // stringResponse=response.body;
//         mapResponse = json.decode(response.body);
//         listResponse = mapResponse['data'];
//       });
//     }
//   }

//   @override
//   void initState() {
//     apicall();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Center(child: Text('API ')),
//         ),
//         body: ListView.builder(
//           itemBuilder: (context, index) {
//             return Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Image.network(listResponse[index]['avatar']),
//                 ),
//                 Text(listResponse[index]['id'].toString()),
//                 Text(listResponse[index]['email'].toString()),
//                 Text(listResponse[index]['first_name'].toString()),
//                 Text(listResponse[index]['last_name'].toString()),
//               ],
//             );
//           },
//           itemCount: listResponse == null ? 0 : listResponse.length,
//         ));
//   }
// }

import 'dart:io';

import 'package:crop_image/crop_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: const Text('Select Image '),
              onPressed: () {
                getImages();
                // crop_Image();
              },
            ),
            Expanded(
              child: SizedBox(
                  width: 300.0,
                  child: selectedImages.isEmpty
                      ? const Center(child: Text(''))
                      : GridView.builder(
                          itemCount: selectedImages.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (BuildContext context, int index) {
                            return Center(
                                child: kIsWeb
                                    ? Image.network(selectedImages[index].path)
                                    : GestureDetector(
                                        child:
                                            Image.file(selectedImages[index]),
                                        onTap: () {
                                          CropImage(
                                            image: Image.file(
                                                selectedImages[index]),
                                          );
                                          setState(() {});
                                        },
                                      ));
                          },
                        )),
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
        } else {}
      },
    );
  }
}
