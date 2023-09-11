import 'package:dokita_app/presentation/splash_screen/splash_screen.dart';
import 'package:dokita_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:dokita_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:dokita_app/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:dokita_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:dokita_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:dokita_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:dokita_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:dokita_app/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:dokita_app/presentation/verification_code_screen/binding/verification_code_binding.dart';
import 'package:dokita_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:dokita_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:dokita_app/presentation/categories_screen/categories_screen.dart';
import 'package:dokita_app/presentation/categories_screen/binding/categories_binding.dart';
import 'package:dokita_app/presentation/doctor_container_screen/doctor_container_screen.dart';
import 'package:dokita_app/presentation/doctor_container_screen/binding/doctor_container_binding.dart';
import 'package:dokita_app/presentation/search_screen/search_screen.dart';
import 'package:dokita_app/presentation/search_screen/binding/search_binding.dart';
import 'package:dokita_app/presentation/doctor_profile_screen/doctor_profile_screen.dart';
import 'package:dokita_app/presentation/doctor_profile_screen/binding/doctor_profile_binding.dart';
import 'package:dokita_app/presentation/doctor_appointment_screen/doctor_appointment_screen.dart';
import 'package:dokita_app/presentation/doctor_appointment_screen/binding/doctor_appointment_binding.dart';
import 'package:dokita_app/presentation/appointment_created_screen/appointment_created_screen.dart';
import 'package:dokita_app/presentation/appointment_created_screen/binding/appointment_created_binding.dart';
import 'package:dokita_app/presentation/payment_screen/payment_screen.dart';
import 'package:dokita_app/presentation/payment_screen/binding/payment_binding.dart';
import 'package:dokita_app/presentation/payment_done_screen/payment_done_screen.dart';
import 'package:dokita_app/presentation/payment_done_screen/binding/payment_done_binding.dart';
import 'package:dokita_app/presentation/incoming_call_screen/incoming_call_screen.dart';
import 'package:dokita_app/presentation/incoming_call_screen/binding/incoming_call_binding.dart';
import 'package:dokita_app/presentation/video_call_screen/video_call_screen.dart';
import 'package:dokita_app/presentation/video_call_screen/binding/video_call_binding.dart';
import 'package:dokita_app/presentation/chat_screen/chat_screen.dart';
import 'package:dokita_app/presentation/chat_screen/binding/chat_binding.dart';
import 'package:dokita_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dokita_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String doctorPage = '/doctor_page';

  static const String doctorContainerScreen = '/doctor_container_screen';

  static const String searchScreen = '/search_screen';

  static const String doctorProfileScreen = '/doctor_profile_screen';

  static const String doctorAppointmentScreen = '/doctor_appointment_screen';

  static const String appointmentCreatedScreen = '/appointment_created_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentDoneScreen = '/payment_done_screen';

  static const String incomingCallScreen = '/incoming_call_screen';

  static const String videoCallScreen = '/video_call_screen';

  static const String chatScreen = '/chat_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationCodeScreen,
      page: () => VerificationCodeScreen(),
      bindings: [
        VerificationCodeBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: categoriesScreen,
      page: () => CategoriesScreen(),
      bindings: [
        CategoriesBinding(),
      ],
    ),
    GetPage(
      name: doctorContainerScreen,
      page: () => DoctorContainerScreen(),
      bindings: [
        DoctorContainerBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: doctorProfileScreen,
      page: () => DoctorProfileScreen(),
      bindings: [
        DoctorProfileBinding(),
      ],
    ),
    GetPage(
      name: doctorAppointmentScreen,
      page: () => DoctorAppointmentScreen(),
      bindings: [
        DoctorAppointmentBinding(),
      ],
    ),
    GetPage(
      name: appointmentCreatedScreen,
      page: () => AppointmentCreatedScreen(),
      bindings: [
        AppointmentCreatedBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: paymentDoneScreen,
      page: () => PaymentDoneScreen(),
      bindings: [
        PaymentDoneBinding(),
      ],
    ),
    GetPage(
      name: incomingCallScreen,
      page: () => IncomingCallScreen(),
      bindings: [
        IncomingCallBinding(),
      ],
    ),
    GetPage(
      name: videoCallScreen,
      page: () => VideoCallScreen(),
      bindings: [
        VideoCallBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
