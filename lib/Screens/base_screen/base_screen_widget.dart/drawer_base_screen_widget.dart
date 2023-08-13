import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorers/Utils/theme/app_colors.dart';
import 'package:scorers/shared_widgets/buttons/neaumorphic_button_widget.dart';

class BaseScreenDrawerWidget extends StatelessWidget {
  const BaseScreenDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var neumorphicStyle = NeumorphicStyle(
      shape: NeumorphicShape.convex,
      depth: -10,
      border: NeumorphicBorder(
        color: Colors.grey[300]!,
        width: 0.3,
      ),
      boxShape: NeumorphicBoxShape.roundRect(
        BorderRadius.circular(12),
      ),
    );
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            child: Image.asset(
              "assets/images/logo.png",
              scale: 0.8,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Neumorphic(
                style: neumorphicStyle,
                child: Container(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          const NeumorphicButtonWidget(
            icon: Icons.login,
            label: "Login",
          ),
          const NeumorphicButtonWidget(
            icon: Icons.person,
            label: "Sign Up",
          ),
          const NeumorphicButtonWidget(
            icon: Icons.logout,
            label: "Logout",
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
