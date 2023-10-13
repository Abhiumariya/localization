// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// String stringResponse = stringResponse;
Map mapResponse = mapResponse;
// Map dataResponse = dataResponse;
List listResponse = listResponse;

class _MyHomePageState extends State<MyHomePage> {
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users?delay=3"));
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse=response.body;
        mapResponse = json.decode(response.body);
        listResponse = mapResponse['data'];
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('API ')),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(listResponse[index]['avatar']),
                ),
                Text(listResponse[index]['id'].toString()),
                Text(listResponse[index]['email'].toString()),
                Text(listResponse[index]['first_name'].toString()),
                Text(listResponse[index]['last_name'].toString()),
              ],
            );
          },
          itemCount: listResponse == null ? 0 : listResponse.length,
        ));
  }
}

// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:multi_crop_picker/multi_crop_picker.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Uint8List>? photos;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(Icons.menu),
//         title: const Text("images"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//                 onPressed: () async {
//                   photos = await MultiCropPicker.selectMedia(context,
//                       maxLength: 5,
//                       aspectRatio: 1.0,
//                       previewShowingRatio: 1.0,
//                       textColor: Colors.white,
//                       backgroundColor: Colors.transparent,
//                       tagColor: Colors.yellow,
//                       loadingWidget: const LoadingCircle(),
//                       tagTextColor: Colors.black);
//                   setState(() {});
//                 },
//                 child: const Text('get images')),
//             if (photos != null)
//               Expanded(
//                   child: ListView.builder(
//                       itemCount: photos!.length,
//                       shrinkWrap: true,
//                       itemBuilder: (context, index) {
//                         return SizedBox(
//                           height: MediaQuery.of(context).size.width,
//                           width: MediaQuery.of(context).size.width,
//                           child: Image.memory(photos![index]),
//                         );
//                       }))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class LoadingCircle extends StatelessWidget {
//   const LoadingCircle(
//       {Key? key,
//       this.size = 55.0,
//       this.backgroudColor = 0x000000,
//       this.color = 0xFFFFFDE7})
//       : super(key: key);
//   final double size;
//   final int backgroudColor;
//   final int color;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: size,
//       height: size,
//       child: CircularProgressIndicator(
//         strokeWidth: 4,
//         backgroundColor: Color(backgroudColor),
//         color: Color(color),
//       ),
//     );
//   }
// }
