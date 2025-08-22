import 'package:flower_app/core/routes/routes.dart';
import 'package:flower_app/presentation/auth/login/view/widgets/login_view.dart';
import 'package:flower_app/presentation/auth/sign_up/view/widgets/sign_up_view.dart';
import 'package:flower_app/presentation/main_layout/main_layout_view.dart';
import 'package:flower_app/presentation/product/view/widgets/product_view.dart';
import 'package:flower_app/presentation/product_details/view/widgets/product_details_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => SignUpView());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routes.mainLayout:
        return MaterialPageRoute(builder: (_) => MainLayoutView());
      case Routes.product:
        return MaterialPageRoute(builder: (_) => ProductView());
      case Routes.productDetails:
        return MaterialPageRoute(builder: (_) => ProductDetailsView());

      // Define your routes here
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Page not found'))),
        );
    }
  }
}
