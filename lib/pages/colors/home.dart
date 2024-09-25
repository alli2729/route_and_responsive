import 'package:flutter/material.dart';
import 'package:route_app/enums/breakpoint.dart';
import '../../enums/widget_color_enum.dart';
import 'blue_page.dart';
import 'green_page.dart';
import 'orange_page.dart';
import 'red_page.dart';
import '../../widgets/my_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
    );
  }

  Widget _body(BuildContext context) {
    return Center(
      child: _contentBody(context),
    );
  }

  //* Content Bodies-----------------------------------------------------------

  Widget _contentBody(BuildContext context) {
    // get width of page
    final double width = MediaQuery.sizeOf(context).width;
    if (width < Breakpoint.small.size) {
      return _contentBodyForSmall(context);
    } else if (width > Breakpoint.small.size && width < Breakpoint.large.size) {
      return _contentBodyForMedium(context);
    }
    return _contentBodyForLarge(context);
  }

  Widget _contentBodyForSmall(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _red(context),
        _blue(context),
        _green(context),
        _orange(context),
      ],
    );
  }

  Widget _contentBodyForMedium(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _red(context),
            _blue(context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _green(context),
            _orange(context),
          ],
        ),
      ],
    );
  }

  Widget _contentBodyForLarge(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _red(context),
        _blue(context),
        _green(context),
        _orange(context),
      ],
    );
  }

  //* Widgets------------------------------------------------------------------

  Widget _red(BuildContext context) {
    return MyWidget(
        onTap: () => _goToRedPage(context), value: WidgetColorEnum.red);
  }

  Widget _blue(BuildContext context) {
    return MyWidget(
        onTap: () => _goToBluePage(context), value: WidgetColorEnum.blue);
  }

  Widget _green(BuildContext context) {
    return MyWidget(
        onTap: () => _goToGreenPage(context), value: WidgetColorEnum.green);
  }

  Widget _orange(BuildContext context) {
    return MyWidget(
        onTap: () => _goToOrangePage(context), value: WidgetColorEnum.orange);
  }

  //* Methods------------------------------------------------------------------

  void _goToRedPage(BuildContext context) {
    Navigator.pushNamed(context, RedPage.route);
  }

  void _goToBluePage(BuildContext context) {
    Navigator.pushNamed(context, BluePage.route);
  }

  void _goToGreenPage(BuildContext context) {
    Navigator.pushNamed(context, GreenPage.route);
  }

  void _goToOrangePage(BuildContext context) {
    Navigator.pushNamed(context, OrangePage.route);
  }
}
