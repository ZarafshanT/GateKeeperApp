
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


//import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

import '../Controller/audio_callscreen_controller.dart';

class AudioCallScreen extends GetView {

  @override
  Widget build(BuildContext context) {
// return Container();

    return GetBuilder<AudioCallScreenController>(
        init: AudioCallScreenController(),
        builder: (controller) {
          return Container();

          // return    ZegoUIKitPrebuiltCallWithInvitation(
          //   appID:2104827868,
          //   tokenServerUrl: "wss://webliveroom2104827868-api.coolzcloud.com/ws",
          //   appSign:"0c362ea56d0f9f4a0d5114cb0c33a83989d9982d15450c866cecd91b810840b8",
          //   userID: controller.user.userid.toString(),
          //   userName:controller.user.firstName.toString(),
          //   notifyWhenAppRunningInBackgroundOrQuit: true,
          //   // isIOSSandboxEnvironment: false,
          //   plugins: [ZegoUIKitSignalingPlugin()], child:
          //     Text("kk")
          // // ZegoSendCallInvitationButton(
          // //   /// For offline call notification
          // //   resourceID: "zegouikit_call",
          // //   isVideoCall: true,
          // //   invitees: [
          // //     ZegoUIKitUser(
          // //         id: 'suleman'.toString(),
          // //         name:  "suleman".toString()
          // //     ),
          // //
          // //   ],
          // // ),



          // );


          //   ZegoUIKitPrebuiltCall(

          //   appID: 2104827868, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
          //   appSign: "0c362ea56d0f9f4a0d5114cb0c33a83989d9982d15450c866cecd91b810840b8", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
          //   userID: controller.user.userid.toString(),
          //   userName: controller.user.firstName!+" "+controller.user.lastName.toString(),
          //   callID: controller.chatRoomid.toString(),
          //   // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
          //   config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()
          //     ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
          // );
        });

  }
}