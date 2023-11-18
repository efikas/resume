import 'package:flutter/material.dart';
import 'package:resume/app/colors.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class LoadingWidget extends StatelessWidget {
  final bool isLoading;
  final bool shouldRefresh;
  final Widget child;
  final double height;
  final Function()? onRefresh;

  LoadingWidget({Key? key, this.isLoading = false, this.shouldRefresh = false, required this.child, this.height = 200, this.onRefresh})
      : super(key: key);

  final GlobalKey _refreshIndicatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return getChildWidget();
  }

  Widget getChildWidget() {
    if (isLoading) {
      return SizedBox(
        height: height,
        child: const Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
        ),
      );
    } else if (shouldRefresh) {
      return LiquidPullToRefresh(
        key: _refreshIndicatorKey,
        onRefresh: _handleRefresh,
        child: child,
      );
    } else {
      return child;
    }
  }

  Future<void> _handleRefresh() async {
    // _refreshIndicatorKey.currentState?.show();
    // _refreshIndicatorKey.currentState.
    if (onRefresh != null) {
      await onRefresh!();
    }
  }
}
