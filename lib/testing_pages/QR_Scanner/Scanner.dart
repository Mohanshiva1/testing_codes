// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
//
// class Scanner extends StatefulWidget {
//   const Scanner({Key? key}) : super(key: key);
//
//   @override
//   _ScannerState createState() => _ScannerState();
// }
//
// class _ScannerState extends State<Scanner> {
//   final qrKey = GlobalKey(debugLabel: "QR");
//
//   Barcode? barcode;
//
//   QRViewController? controller;
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
//
//   @override
//   void reassemble() async {
//     // TODO: implement reassemble
//     super.reassemble();
//
//     if (Platform.isAndroid) {
//       await controller!.pauseCamera();
//     }
//     controller!.resumeCamera();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Center(
//               child: Text(
//                 "QR SCANNER",
//                 style: TextStyle(fontSize: 30, color: Colors.black),
//               ),
//             ),
//             Center(
//               child: SizedBox(
//                 height: 300,
//                 width: 300,
//                 child: buildQrView(context),
//               ),
//             ),
//             Center(
//               child: buildResult(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildQrView(BuildContext context) => QRView(
//         key: qrKey,
//         onQRViewCreated: onQRViewCreated,
//         overlay: QrScannerOverlayShape(
//           overlayColor: Colors.white,
//           borderLength: 130,
//           borderWidth: 10,
//           borderColor: Colors.blueGrey.shade700,
//           borderRadius: 20,
//         ),
//       );
//
//   void onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//
//       controller.scannedDataStream.listen((barcode) => this.barcode = barcode);
//     });
//   }
//
//   Widget buildResult() => Text(
//         barcode != null ? "Result : ${barcode!.code}" : 'Scan a Code',
//         maxLines: 3,
//       );
// }
