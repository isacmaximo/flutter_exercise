import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/shared/app_colors.dart';
import 'package:widgetbook_workspace/shared/app_text_style.dart';
import 'package:widgetbook_workspace/shared/widgets/floating_widget.dart';
import 'package:widgetbook_workspace/shared/widgets/footer_card.dart';
import 'package:widgetbook_workspace/shared/widgets/header_card.dart';

@widgetbook.UseCase(name: 'Default', type: Exercise2)
Widget buildExercise2(BuildContext context) {
  return const Exercise2();
}

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  late ScrollController _scrollController;

  bool _isFooterVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (!_isFooterVisible) {
        setState(() {
          _isFooterVisible = true;
        });
      }
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (_isFooterVisible) {
        setState(() {
          _isFooterVisible = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Here's your landing page:",
                    style: AppTextStyle.bodyText,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: HeaderCard(),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                    ' Cras at odio quam. Etiam sed lorem id ligula egestas ornare'
                    ' non ac mauris. Proin non sagittis justo.'
                    ' Sed id viverra est. Integer enim sem, scelerisque vitae'
                    ' tristique sit amet, ullamcorper vel arcu. Nullam mollis'
                    ' posuere turpis, ac dignissim quam sodales eget. Aenean congue'
                    ' fringilla pretium. Morbi volutpat fringilla luctus.'
                    ' Donec et ligula sit amet mauris sodales tristique a ac quam.'
                    ' Donec vel libero a libero laoreet eleifend a ut nisi.'
                    ' Donec ut sem in orci gravida mattis eget ut nibh. Ut faucibus'
                    ' sollicitudin magna, ac sollicitudin ex tristique at.'
                    ' Pellentesque vehicula nisl et augue commodo, id bibendum urna'
                    ' tristique. Morbi in malesuada libero. Nullam rhoncus ex quis'
                    ' urna fringilla euismod vel imperdiet justo. Quisque condimentum'
                    ' cursus facilisis. Donec ex sem, efficitur sed sagittis ac,'
                    ' accumsan mattis libero. Pellentesque vulputate eget odio vel'
                    ' convallis. Proin malesuada pulvinar felis, sed lobortis'
                    ' sem porttitor ac. Vivamus molestie vehicula orci, efficitur'
                    ' rutrum nulla semper ac. Phasellus ut ligula tortor.'
                    ' In augue est, elementum a sodales eu, sodales id lectus.'
                    ' Sed ac luctus leo. Nullam a nulla pellentesque, scelerisque'
                    ' dolor in, mattis turpis.',
                    style: AppTextStyle.bodyText,
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedSlide(
                      offset: _isFooterVisible
                          ? Offset.zero
                          : const Offset(0, 2.0),
                      duration: const Duration(milliseconds: 500), //
                      curve: Curves.easeInOut,
                      child: Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 84),
                        child: FooterCard(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FloatingWidget(),
        ],
      ),
    );
  }
}
