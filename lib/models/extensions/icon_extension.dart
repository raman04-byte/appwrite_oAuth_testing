import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension AdaptiveIconExtension on IconData {
  IconData get adaptive {
    return Platform.isAndroid
        ? this
        : CupertinoIconHelper.getCupertinoIconData(this);
  }
}

class CupertinoIconHelper {
  static IconData getCupertinoIconData(IconData iconData) {
    return switch (iconData) {
      Icons.add => CupertinoIcons.add,
      Icons.add_box => CupertinoIcons.add_circled,
      Icons.volume_off_rounded => CupertinoIcons.volume_off,
      Icons.volume_up_rounded => CupertinoIcons.volume_up,
      Icons.access_time => CupertinoIcons.clock,
      Icons.check_rounded => CupertinoIcons.check_mark_circled,
      Icons.close_rounded => CupertinoIcons.xmark,
      Icons.delete_rounded => CupertinoIcons.delete,
      Icons.copy_rounded => CupertinoIcons.doc_on_doc,
      Icons.info_outline_rounded => CupertinoIcons.info,
      Icons.translate_rounded => CupertinoIcons.globe,
      Icons.call_rounded => CupertinoIcons.phone,
      Icons.add_photo_alternate_outlined => CupertinoIcons.photo,
      Icons.send_rounded => CupertinoIcons.paperplane,
      Icons.not_interested_rounded => CupertinoIcons.clear,
      Icons.done_rounded => CupertinoIcons.check_mark_circled,
      Icons.edit_rounded => CupertinoIcons.pencil,
      Icons.refresh => CupertinoIcons.refresh,
      Icons.check_rounded => CupertinoIcons.check_mark_circled,
      Icons.arrow_downward_rounded => CupertinoIcons.down_arrow,
      Icons.visibility_off_outlined => CupertinoIcons.eye_slash,
      Icons.visibility_outlined => CupertinoIcons.eye,
      Icons.warning_amber_rounded => CupertinoIcons.exclamationmark_triangle,
      Icons.add => CupertinoIcons.add,
      Icons.redeem_rounded => CupertinoIcons.gift,
      Icons.flash_off => CupertinoIcons.bolt_slash,
      Icons.flash_on => CupertinoIcons.bolt,
      Icons.camera => CupertinoIcons.camera,
      Icons.camera_alt => CupertinoIcons.camera,
      Icons.search => CupertinoIcons.search,
      Icons.arrow_forward_ios => CupertinoIcons.right_chevron,
      Icons.arrow_back_ios_rounded => CupertinoIcons.left_chevron,
      Icons.delete => CupertinoIcons.delete,
      _ => iconData
    };
  }
}

class AdaptiveIcon extends Icon {
  final IconData iconData;
  AdaptiveIcon(
    this.iconData, {
    super.key,
    super.size,
    super.fill,
    super.weight,
    super.grade,
    super.opticalSize,
    super.color,
    super.shadows,
    super.semanticLabel,
    super.textDirection,
    super.applyTextScaling,

  }) : super(iconData.adaptive);
}
