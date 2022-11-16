import 'package:admin/not_found_view.dart';
import 'package:admin/pages/login/forget_password_page.dart';
import 'package:admin/pages/login/login_controller.dart';
import 'package:admin/pages/login/login_view.dart';
import 'package:admin/pages/login/password_reset_page.dart';
import 'package:admin/pages/logout/logout_view.dart';
import 'package:admin/pages/profile/account_view.dart';
import 'package:admin/pages/profile/change_password_page.dart';
import 'package:admin/pages/profile/profile_controller.dart';
import 'package:admin/pages/profile/profile_view.dart';
import 'package:get/get.dart';
import 'utils/app_routes.dart';

class Routes {
  static const INITIAL = AppRoutes.login;
  static const ERROR = AppRoutes.notFoundPage;
  static final routes = [
    GetPage(
      name: AppRoutes.notFoundPage,
      page: () => const UnknownView(),
    ),
    GetPage(name: AppRoutes.account, page: () => AccountMenuView()),
    GetPage(
        name: AppRoutes.profile,
        page: () => ProfileView(),
        binding: BindingsBuilder(
            () => {Get.lazyPut<ProfileController>(() => ProfileController())})),
    GetPage(name: AppRoutes.logout, page: () => LogoutView()),
    GetPage(name: AppRoutes.changePassword, page: () => ChangePasswordPage()),
    GetPage(
        name: AppRoutes.login,
        page: () => LoginView(),
        binding: BindingsBuilder(
            () => {Get.lazyPut<LoginController>(() => LoginController())})),
    GetPage(name: AppRoutes.forgotPassword, page: () => ForgetPasswordPage()),
    GetPage(name: AppRoutes.passwordReset, page: () => PasswordResetPage()),
  ];
}

class IntroLogin2View {}
