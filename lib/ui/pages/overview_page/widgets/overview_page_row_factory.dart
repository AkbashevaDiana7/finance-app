import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';
import '../overview_page_data.dart';

class OverviewPageRowFactory {
  static PageRow fromData(OverviewPageRowData data, {Key? key}) => PageRow.item(
    key: key,
    iconText: data.iconText,
    text: data.text,
    amount: data.amount,
    subText: data.subText,
  );
}
