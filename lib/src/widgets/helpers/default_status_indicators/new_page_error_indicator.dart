import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination_v4/src/widgets/helpers/default_status_indicators/footer_tile.dart';

class NewPageErrorIndicator extends StatelessWidget {
  const NewPageErrorIndicator({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: const FooterTile(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Something went wrong. Tap to try again.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 4,
              ),
              Icon(
                Icons.refresh,
                size: 16,
              ),
            ],
          ),
        ),
      );
}
