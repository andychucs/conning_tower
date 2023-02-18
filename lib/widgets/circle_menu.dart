// // Unused
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'dart:math';
// import 'package:vector_math/vector_math.dart' show radians;
//
// class CircleMenu extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => CircleMenuState();
// }
//
// class CircleMenuState extends State<CircleMenu>
//     with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   late Animation<double> scale;
//   late Animation<double> translation;
//   late Animation<double> rotation;
//
//   @override
//   void initState() {
//     super.initState();
//     controller =
//         AnimationController(duration: Duration(milliseconds: 900), vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return RadialAnimation(
//       controller: controller,
//       scale: Tween<double>(
//         begin: 1.5,
//         end: 0.0,
//       ).animate(
//         CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
//       ),
//       translation: Tween<double>(
//         begin: 0.0,
//         end: 100.0,
//       ).animate(
//         CurvedAnimation(parent: controller, curve: Curves.linear),
//       ),
//       rotation: Tween<double>(
//         begin: 0.0,
//         end: 360.0,
//       ).animate(
//         CurvedAnimation(
//           parent: controller,
//           curve: Interval(
//             0.3,
//             0.9,
//             curve: Curves.decelerate,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class RadialAnimation extends StatelessWidget {
//   final AnimationController controller;
//   final Animation<double> scale;
//   final Animation<double> translation;
//   final Animation<double> rotation;
//
//   const RadialAnimation(
//       {super.key,
//       required this.controller,
//       required this.scale,
//       required this.translation,
//       required this.rotation});
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(animation: controller, builder: (context, builder) {
//       return Transform.rotate(angle: radians(rotation.value),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           _buildButton(0, color: Colors.red, icon: CupertinoIcons.rotate_left),
//           _buildButton(45, color: Colors.green, icon:CupertinoIcons.rotate_right),
//           _buildButton(90, color: Colors.orange, icon: FontAwesomeIcons.fire),
//           _buildButton(135, color: Colors.blue, icon:FontAwesomeIcons.kiwiBird),
//           _buildButton(180, color: Colors.black, icon:FontAwesomeIcons.cat),
//           _buildButton(225, color: Colors.indigo, icon:FontAwesomeIcons.paw),
//           _buildButton(270, color: Colors.pink, icon: FontAwesomeIcons.bong),
//           _buildButton(315, color: Colors.yellow, icon:FontAwesomeIcons.bolt),
//           Transform.scale(
//             scale: scale.value - 1.5, // subtract the beginning value to run the opposite animation
//             child: FloatingActionButton(
//                 child: Icon(FontAwesomeIcons.circleXmark),
//                 onPressed: _close,
//                 backgroundColor: Colors.red
//             ),
//           ),
//
//           Transform.scale(
//             scale: scale.value,
//             child: FloatingActionButton(
//                 child:
//                 Icon(FontAwesomeIcons.anchor),
//                 onPressed: _open
//             ),
//           )
//         ],
//       ),
//       );
//     });
//   }
//   _buildButton(double angle, { required Color color, required IconData icon }) {
//     final double rad = radians(angle);
//     return Transform(
//         transform: Matrix4.identity()..translate(
//             (translation.value) * cos(rad),
//             (translation.value) * sin(rad)
//         ),
//
//         child: Fab(icon,color)
//     );
//   }
//
//   _open() {
//     controller.forward();
//   }
//
//   _close() {
//     controller.reverse();
//   }
// }
//
// class Fab extends StatelessWidget {
//
//   final Color color;
//   final IconData icon;
//
//   Fab(this.icon, this.color, {
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//         child: Icon(icon), backgroundColor: color, onPressed: (){
//       debugPrint("click");
//     }, elevation: 0);
//   }
// }
//
// class CircleMenuWidget extends StatefulWidget {
//   // final ValueChanged<ItemOption> itemClicked;
//   final List<ItemParameters> itemParameterList;
//   // final String centerIconOpenSourcePath;
//   final IconData iconOpenData;
//   final IconData iconCloseData;
//   final Color centerIconBackground;
//   final Alignment alignment;
//
//   const CircleMenuWidget({
//     required this.itemParameterList,
//     // required this.itemClicked,
//     required this.iconOpenData,
//     required this.iconCloseData,
//     this.alignment = Alignment.center,
//     this.centerIconBackground = const Color(0xFFFF7404),
//   });
//
//   static _CircleMenuWidgetState curState = _CircleMenuWidgetState();
//
//   @override
//   State<StatefulWidget> createState() {
//     curState = new _CircleMenuWidgetState();
//     return curState;
//   }
//
//   void open() {
//     curState.open();
//   }
//
//   void close() {
//     curState.close();
//   }
//
//   bool getStatus() {
//     return curState.closed;
//   }
// }
//
// class _CircleMenuWidgetState extends State<CircleMenuWidget>
//     with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   late Animation<double> scale;
//   late Animation<double> translation;
//   late Animation<double> rotation;
//
//   bool closed = true;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = new AnimationController(
//         duration: const Duration(milliseconds: 200), vsync: this);
//
//     translation = Tween<double>(
//       begin: 0.0,
//       end: 100.0,
//     ).animate(
//       CurvedAnimation(parent: controller, curve: Curves.linear),
//     )..addListener(() {
//         setState(() {});
//       });
//     rotation = Tween<double>(
//       begin: 0.0,
//       end: 360.0,
//     ).animate(
//       CurvedAnimation(
//         parent: controller,
//         curve: Interval(
//           0.3,
//           0.9,
//           curve: Curves.decelerate,
//         ),
//       ),
//     )..addListener(() {
//         setState(() {});
//       });
//     scale = Tween<double>(
//       begin: 1,
//       end: 0.0,
//     ).animate(
//       CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
//     )..addListener(() {
//         setState(() {});
//       });
//   }
//
//   @override
//   Widget build(context) {
//     List<_ItemDetail> itemDetails = [];
//     if (widget.itemParameterList == null ||
//         widget.itemParameterList.length == 0) {
//       return Text("itemParameterList fail");
//     }
//     for (ItemParameters itemParameters in widget.itemParameterList) {
//       double width =
//           itemParameters.itemWidth == 0 ? 56 : itemParameters.itemWidth;
//       double height =
//           itemParameters.itemHeight == 0 ? 56 : itemParameters.itemHeight;
//       // String sourcePath = itemParameters.sourcePath;
//       IconData icon = itemParameters.iconData;
//       double tempAngle = 0;
//       switch (itemParameters.itemOption) {
//         case ItemOption.POSITION_LEFT:
//           tempAngle = 180;
//           break;
//         case ItemOption.POSITION_RIGHT:
//           tempAngle = 0;
//           break;
//         case ItemOption.POSITION_TOP:
//           tempAngle = 270;
//           break;
//         case ItemOption.POSITION_BOTTOM:
//           tempAngle = 90;
//           break;
//         case ItemOption.POSITION_LEFT_TOP:
//           tempAngle = 225;
//           break;
//         case ItemOption.POSITION_RIGHT_TOP:
//           tempAngle = 315;
//           break;
//         case ItemOption.POSITION_LEFT_BOTTOM:
//           tempAngle = 135;
//           break;
//         case ItemOption.POSITION_RIGHT_BOTTOM:
//           tempAngle = 45;
//           break;
//       }
//       _ItemDetail _itemDetail = new _ItemDetail(
//           tempAngle,
//           Icon(icon),
//           // Image(
//           //   image: AssetImage(sourcePath),
//           //   width: width,
//           //   height: height,
//           // ),
//           itemParameters.itemOption);
//       itemDetails.add(_itemDetail);
//     }
//     return AnimatedBuilder(
//         animation: controller,
//         builder: (context, builder) {
//           return Stack(
//               alignment: widget.alignment,
//               children: getChildItemWidgets(itemDetails));
//         });
//   }
//
//   List<Widget> getChildItemWidgets(List<_ItemDetail> itemDetails) {
//     List<Widget> widgets = [];
//     for (_ItemDetail itemDetail in itemDetails) {
//       final double rad = radians(itemDetail.angle);
//       Widget childWidget = Transform(
//           transform: Matrix4.identity()
//             ..translate(
//                 (translation.value) * cos(rad), (translation.value) * sin(rad)),
//           child: FloatingActionButton(
//               onPressed: onClick, elevation: 0, child: itemDetail.childIcon));
//       widgets.add(childWidget);
//     }
//
//
//     Widget centerOpenIcon;
//     if (widget.iconOpenData == null) {
//       centerOpenIcon = Icon(Icons.add);
//     } else {
//       centerOpenIcon = Icon(widget.iconOpenData);
//     }
//
//     Widget centerCloseIcon;
//     if (widget.iconCloseData == null) {
//       centerCloseIcon = Icon(Icons.close);
//     } else {
//       centerCloseIcon = Icon(widget.iconCloseData);
//     }
//
//     var centerCloseWidget = Transform.scale(
//       scale: scale.value - 1,
//       // subtract the beginning value to run the opposite animation
//       child: FloatingActionButton(
//           child: centerCloseIcon,
//           onPressed: close,
//           backgroundColor: widget.centerIconBackground),
//     );
//     var centerOpenWidget = Transform.scale(
//       scale: scale.value,
//       child: FloatingActionButton(
//           child: centerOpenIcon,
//           backgroundColor: widget.centerIconBackground,
//           onPressed: open),
//     );
//     widgets.add(centerCloseWidget);
//     widgets.add(centerOpenWidget);
//     return widgets;
//   }
//
//   onClick() {
//     print("Click");
//   }
//
//   open() {
//     closed = false;
//     print("open");
//     controller.forward();
//   }
//
//   close() {
//     closed = true;
//     controller.reverse();
//   }
// }
//
// enum ItemOption {
//   POSITION_LEFT,
//   POSITION_RIGHT,
//   POSITION_TOP,
//   POSITION_BOTTOM,
//   POSITION_LEFT_TOP,
//   POSITION_RIGHT_TOP,
//   POSITION_LEFT_BOTTOM,
//   POSITION_RIGHT_BOTTOM,
// }
//
// class ItemParameters {
//   ItemOption itemOption;
//   IconData iconData;
//   // String sourcePath;
//   double itemWidth;
//   double itemHeight;
//
//   ItemParameters(
//       this.itemOption, this.iconData, this.itemWidth, this.itemHeight);
// }
//
// class _ItemDetail {
//   double angle;
//   Icon childIcon;
//   ItemOption itemOption;
//
//   _ItemDetail(this.angle, this.childIcon, this.itemOption);
// }
//
//
// enum FabPosition {
//   left,
//   right,
//   top,
//   bottom,
//   leftTop,
//   rightTop,
//   leftBottom,
//   rightBottom,
// }
