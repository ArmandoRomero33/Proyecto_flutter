import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({Key? key}) : super(key: key);

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _bar(),
        _label(),
      ],
    );
  }

  Widget _bar() {
    return Column(
      children: [
        _interval(customColor: Color.fromARGB(255, 29, 253, 9)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 59, 176, 5)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 182, 247, 2)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 204, 255, 0)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 200, 193, 6)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 188, 182, 5)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 235, 109, 12)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 255, 0, 0)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 255, 0, 0)),
        _separator(),
        _interval(customColor: Color.fromARGB(255, 255, 0, 0)),
        _separator(),
      ],
    );
  }

  Widget _separator() {
    return const SizedBox(
      height: 3,
    );
  }

  Widget _interval({required Color customColor}) {
    return SizedBox(
      width: 22.2,
      height: 5.0,
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: customColor,
      )),
    );
  }

  Widget _label() {
    return Text(
      '1.0',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
