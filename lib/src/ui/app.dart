import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_calculator/src/components/black_button.dart';
import 'package:my_ios_calculator/src/components/orange_buttion.dart';
import 'package:my_ios_calculator/src/constants/button_color.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Column(
            children: [
              Expanded(flex: 3, child: _result()),
              Expanded(flex: 7, child: _button()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _result() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SelectableText(
          '0',
          style: TextStyle(
              fontSize: 70, fontWeight: FontWeight.w200, color: Colors.white),
        ),
      ),
    );
  }

  Widget _button() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _firstRow(),
        _secondRow(),
        _thirdRow(),
        _fourthRow(),
        _fifthRow(),
      ],
    );
  }

  Widget _firstRow() {
    return const Row();
  }

  Widget _secondRow() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlackButton(
            type: Type.ROUND,
            child: '7',
          ),
          BlackButton(
            type: Type.ROUND,
            child: '8',
          ),
          BlackButton(
            type: Type.ROUND,
            child: '9',
          ),
          OrangeButton(
              icon: Icon(
                CupertinoIcons.add,
                size: 35,
              ),
              activeIcon: Icon(
                CupertinoIcons.add,
                size: 35,
              ),
              isClick: false),
        ],
      ),
    );
  }

  Widget _thirdRow() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlackButton(
            type: Type.ROUND,
            child: '4',
          ),
          BlackButton(
            type: Type.ROUND,
            child: '5',
          ),
          BlackButton(
            type: Type.ROUND,
            child: '6',
          ),
          OrangeButton(
              icon: Icon(
                CupertinoIcons.add,
                size: 35,
              ),
              activeIcon: Icon(
                CupertinoIcons.add,
                size: 35,
              ),
              isClick: false),
        ],
      ),
    );
  }

  Widget _fourthRow() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlackButton(
            type: Type.ROUND,
            child: '1',
          ),
          BlackButton(
            type: Type.ROUND,
            child: '2',
          ),
          BlackButton(
            type: Type.ROUND,
            child: '3',
          ),
          OrangeButton(
              icon: Icon(
                CupertinoIcons.add,
                size: 35,
              ),
              activeIcon: Icon(
                CupertinoIcons.add,
                size: 35,
              ),
              isClick: false),
        ],
      ),
    );
  }

  Widget _fifthRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlackButton(
            onPressed: () {},
            type: Type.FLAT,
            child: '0',
          ),
          BlackButton(
            type: Type.ROUND,
            child: '.',
            onPressed: () {},
          ),
          OrangeButton(
            isClick: false,
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.add,
              color: ButtonColor.white,
              size: 35,
            ),
            activeIcon: Icon(
              CupertinoIcons.add,
              color: ButtonColor.orange,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
