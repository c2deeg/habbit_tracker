import 'package:flutter_music/home/binding/dashboard_binding.dart';
import 'package:flutter_music/home/binding/home_screen_binding.dart';
import 'package:flutter_music/home/screens/dashboard_screen.dart';
import 'package:flutter_music/home/screens/home_screen.dart';
import 'package:flutter_music/home/screens/home_view.dart';
import 'package:flutter_music/onboarding/forgotPassword/binding/forgot_pass_screen_binding.dart';
import 'package:flutter_music/onboarding/forgotPassword/screens/forogot_pass_screen.dart';
import 'package:flutter_music/onboarding/selectSkill/binding/select_skill_screen_binding.dart';
import 'package:flutter_music/onboarding/selectSkill/binding/select_skill_screen_four_binding.dart';
import 'package:flutter_music/onboarding/selectSkill/binding/select_skill_screen_three_binding.dart';
import 'package:flutter_music/onboarding/selectSkill/binding/select_skill_screen_two_binding.dart';
import 'package:flutter_music/onboarding/selectSkill/binding/syncing_screen_binding.dart';
import 'package:flutter_music/onboarding/selectSkill/screens/select_skill_four.dart';
import 'package:flutter_music/onboarding/selectSkill/screens/select_skill_screen.dart';
import 'package:flutter_music/onboarding/selectSkill/screens/select_skill_three.dart';
import 'package:flutter_music/onboarding/selectSkill/screens/select_skill_two.dart';
import 'package:flutter_music/onboarding/selectSkill/screens/syncing.dart';
import 'package:flutter_music/onboarding/signUp/binding/signup_screen_binding.dart';
import 'package:flutter_music/onboarding/signUp/screens/signup_screen.dart';
import 'package:get/get.dart';
import '../../onboarding/splash/screen/splashScreen.dart';
import '../core/constants/common_strings.dart';
import '../onboarding/login/binding/login_screen_binding.dart';
import '../onboarding/login/screens/login_screen.dart';
import '../onboarding/selectSkill/binding/select_skill_screen_five_binding.dart';
import '../onboarding/selectSkill/screens/select_skill_five.dart';
import '../onboarding/splash/binding/splash_screen_binding.dart';

class Routes {
  Routes._();

  static const String INITIAL = "/";

  static const String guidedJournalContentScreen =
      "/guidedJournalContentScreen";
  static const String loginScreen = "/loginScreen";
  static const String guidedJournalDetails = "/guidedJournalDetails";
  static const String signupScreen = "/signupScreen";
  static const String forgetScreen = "/forgetScreen";
  static const String addCardScreen = "/addCardScreen";
  static const String selectSkill = "/selectSkill";
  static const String selectSkillTwo = "/selectSkillTwo";
  static const String selectSkillThree = "/selectSkillThree";
  static const String selectSkillFour = "/selectSkillFour";
  static const String selectSkillFive = "/selectSkillFive";
  static const String syncing = "/syncing";
  static const String dashboard = "/selectSkill";
  static const String home = "/home";
  static const String dashboardScreen = "/DashboardScreen";
  static const String homeView = "/HomeView";
}

List<GetPage> AppPages() => [
      GetPage(
        name: Routes.INITIAL,
        page: () => SplashScreen(),
        fullscreenDialog: true,
        binding: SPlashBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.loginScreen,
        page: () => const LoginScreen(),
        fullscreenDialog: true,
        binding: LoginScreenBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.signupScreen,
        page: () => const SignUpScreen(),
        fullscreenDialog: true,
        binding: SignUpScreenBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.signupScreen,
        page: () => const SignUpScreen(),
        fullscreenDialog: true,
        binding: SignUpScreenBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.forgetScreen,
        page: () => const ForgotPassScreen(),
        fullscreenDialog: true,
        binding: ForgotPassScreenBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.selectSkill,
        page: () => const SelectSkillScreen(),
        fullscreenDialog: true,
        binding: SelectSkillScreenBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.selectSkillTwo,
        page: () => const SelectSkillScreenTwo(),
        fullscreenDialog: true,
        binding: SelectSkillScreenTwoBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.selectSkillThree,
        page: () => const SelectSkillScreenThree(),
        fullscreenDialog: true,
        binding: SelectSkillScreenThreeBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.selectSkillFour,
        page: () => const SelectSkillScreenFour(),
        fullscreenDialog: true,
        binding: SelectSkillScreenFourBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.selectSkillFive,
        page: () => SelectSkillScreenFive(),
        fullscreenDialog: true,
        binding: SelectSkillScreenFiveBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.syncing,
        page: () => const Syncing(),
        fullscreenDialog: true,
        binding: SyncingScreenBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
      GetPage(
        name: Routes.home,
        page: () =>  HomeScreen(),
        fullscreenDialog: true,
        binding: HomeScreenBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),GetPage(
        name: Routes.homeView,
        page: () =>  const HomeView(),
        fullscreenDialog: true,
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),GetPage(
        name: Routes.dashboardScreen,
        page: () =>  const DashboardScreen(),
        fullscreenDialog: true,
        binding: DashboardBinding(),
        transition: CommonStrings.transition,
        transitionDuration:
            const Duration(milliseconds: CommonStrings.transitionDuration),
      ),
    ];
