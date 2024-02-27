import 'package:all_app/Screens/grocery/common_widgets/app_text.dart';
import 'package:all_app/Screens/grocery/styles/colors.dart';
import 'package:flutter/material.dart';

import 'item_counter_widget.dart';

class ChartItemWidget extends StatefulWidget {
  String imagePath = '';
  String productName = '';
  String price = '';
  String product_weight = '';
  ChartItemWidget({Key? key}) : super(key: key);

  @override
  _ChartItemWidgetState createState() => _ChartItemWidgetState();
}
class _ChartItemWidgetState extends State<ChartItemWidget> {
  final double height = 80;
  final Color borderColor = Color(0xffE2E2E2);
  final double borderRadius = 18;
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            imageWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: widget.productName,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                AppText(
                    text: "widget",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGrey),
                SizedBox(
                  height: 4,
                ),
                Spacer(),
                ItemCounterWidget(
                  onAmountChanged: (newAmount) {
                    setState(() {
                      amount = newAmount;
                    });
                  },
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.close,
                  color: AppColors.darkGrey,
                  size: 25,
                ),
                Spacer(
                  flex: 5,
                ),
                Container(
                  width: 70,
                  child: AppText(
                    text:"Rs."+ "${getPrice().toStringAsFixed(2)}",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.right,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      width: 60,
      child: Image.asset(widget.imagePath),
    );
  }

  double getPrice() {
    return 0.5;
  }
}


