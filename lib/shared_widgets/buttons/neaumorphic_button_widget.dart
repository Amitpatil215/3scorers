
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:scorers/Utils/theme/app_colors.dart';

class NeumorphicButtonWidget extends StatelessWidget {
  const NeumorphicButtonWidget({
    super.key,
    required this.label,
    required this.icon,
    this.onPressed,
  });
  final String label;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var neumorphicStyle = NeumorphicStyle(
      shape: NeumorphicShape.convex,
      color: AppColors.primaryColor,
      depth: -10,
      border: NeumorphicBorder(
        color: Colors.grey[300]!,
        width: 0.3,
      ),
      boxShape: NeumorphicBoxShape.roundRect(
        BorderRadius.circular(12),
      ),
    );
    return NeumorphicButton(
      margin: const EdgeInsets.all(8.0),
      onPressed: onPressed,
      style: neumorphicStyle,
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          Icon(icon, size: 24, color: Colors.white),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
