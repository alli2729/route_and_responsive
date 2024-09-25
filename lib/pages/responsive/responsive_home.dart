import 'package:flutter/material.dart';
import 'package:route_app/enums/breakpoint.dart';
import 'package:route_app/widgets/small_widget.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('Home Page'),
      centerTitle: true,
    );
  }

  Widget _body(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < Breakpoint.small.size) {
      return _bodyForSmallScreen(context);
    }
    return _bodyForLargeScreen(context);
  }

  Widget _bodyForSmallScreen(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          SmallWidget(),
          SmallWidget(),
          SmallWidget(),
        ],
      ),
    );
  }

  Widget _bodyForLargeScreen(BuildContext context) {
    return Column();
  }
}
