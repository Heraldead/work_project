import 'dart:io';

import 'package:flutter_aplication/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('all_images assets test', () {
    expect(true, File(AllImages.bastion).existsSync());
    expect(true, File(AllImages.cat).existsSync());
    expect(true, File(AllImages.green).existsSync());
    expect(true, File(AllImages.list).existsSync());
    expect(true, File(AllImages.loo).existsSync());
    expect(true, File(AllImages.oG).existsSync());
    expect(true, File(AllImages.rick).existsSync());
    expect(true, File(AllImages.teplica).existsSync());
  });
}
