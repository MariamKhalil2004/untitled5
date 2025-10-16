/*import 'package:flutter/material.dart';

class ItemCategory extends StatefulWidget {
  final String label; // النص اللي هيتكتب
  final Color hoverColor; // اللون لما تعملي hover

  const ItemCategory({
    super.key,
    required this.label,
    this.hoverColor = const Color(0xFFDD8560), // لون افتراضي
  });

  @override
  State<ItemCategory> createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: _isHovered ? widget.hoverColor : Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          widget.label,
          style: const TextStyle(
            color: Colors.white, // النص أبيض
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

class ItemCategory extends StatefulWidget {
  final String label;

  const ItemCategory({
    super.key,
    required this.label,
  });

  @override
  State<ItemCategory> createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  bool _isHovered = false;
  bool _isSelected = false;

  void _handleTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color orangeColor = Color(0xFFDD8560);

    Color bgColor;
    Color textColor;

    if (_isSelected) {
      bgColor = orangeColor;
      textColor = Colors.white;
    } else if (_isHovered) {
      bgColor = orangeColor;
      textColor = Colors.white;
    } else {
      bgColor = Colors.white;
      textColor = Colors.black;
    }

    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: GestureDetector(
          onTap: _handleTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              widget.label,
              style: TextStyle(
                color: textColor,
                fontSize: 15,
                fontWeight: FontWeight.w600, // Semi-bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}