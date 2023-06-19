import 'package:gatekeeper/Module/Add%20Walkin%20Guests%20Deatil/View/add_walkin_guests_detail.dart';
import 'package:gatekeeper/Module/Chat%20Screens/Neighbour%20Chat%20Screen/View/neighbour_chat_screen.dart';

import 'package:gatekeeper/Module/Panic%20Mode/panic_mode_screen.dart';
import 'package:gatekeeper/Module/Pre%20Approve%20Entry%20Residents/View/pre_approve_entry_residents.dart';
import 'package:gatekeeper/Module/Service%20Provider%20Check%20In/View/service_provider_check_in.dart';
import 'package:gatekeeper/Module/Walkin%20Guests/View/walkin_guests.dart';
import 'package:get/get.dart';
import '../Module/AddReportToAdmin/View/add_report_to_admin_screen.dart';

import '../Module/AddVistorDetail/View/add_vistor_detail_screen.dart';
import '../Module/Audio Call Screen/View/audio_call_screen.dart';
import '../Module/Chat Availbility/View/chat_availbility_screen.dart';
import '../Module/Events/View/events_screen.dart';
import '../Module/GateKeeper Attendence/View/gate_keeper_attendence.dart';
import '../Module/HomeScreen/View/home_screen.dart';
import '../Module/Login/View/login_screen.dart';

import '../Module/NoticeBoard/View/notice_board_screen.dart';
import '../Module/Pre Approve Entry Notifications/View/pre_approve_entry_notification.dart';

import '../Module/Pre Approved Guests/View/pre_approved_guests.dart';
import '../Module/ReportToAdmin/View/report_to_admin_screen.dart';
import '../Module/Residental Emergency/View/residential_emergency_screen.dart';
import '../Module/Service Provider Check Out/View/service_provider_check_out.dart';
import '../Module/Vistor Detail/View/vistor_detail_screen.dart';
import '../Splash/View/splash_screen.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreen());
    Get.lazyPut(() => Login());
    Get.lazyPut(() => HomeScreen());
    //Get.lazyPut(() => ChatScreen());
    Get.lazyPut(() => ChatAvailbilityScreen());
    Get.lazyPut(() => AddReportToAdminScreen());
    Get.lazyPut(() => ReportToAdminScreen());
    Get.lazyPut(() => PreApproveEntryNotification());
    Get.lazyPut(() => PreApproveEntryResidents());
    Get.lazyPut(() => PreApprovedGuests());

    Get.lazyPut(() => GateKeeperAttendence());

    Get.lazyPut(() => ServiceProviderCheckIn());
    Get.lazyPut(() => ServiceProviderCheckOut());
    Get.lazyPut(() => WalkinGuests());
    //Get.lazyPut(() =>AddWalkinGuestsDetail());
    Get.lazyPut(() => PanicModeScreen());
    Get.lazyPut(() => EventsScreen());
    Get.lazyPut(() => NoticeBoardScreen());
    Get.lazyPut(() => NeighbourChatScreen());
    Get.lazyPut(() => AudioCallScreen());
    Get.lazyPut(() => VistorDetailScreen());
    Get.lazyPut(() => AddVistorDetailScreen());
    Get.lazyPut(() => ResidentialEmergencyScreen());

    
  }
}
