import 'controller/search_filter_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchFilterBottomsheet extends StatelessWidget {
  SearchFilterBottomsheet(this.controller);

  SearchFilterController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 166,
            top: 20,
            right: 166,
            bottom: 20,
          ),
          decoration: AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  6,
                ),
                width: getHorizontalSize(
                  42,
                ),
                margin: getMargin(
                  bottom: 420,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray200,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
