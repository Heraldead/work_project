import 'dart:io';

import 'package:flutter_aplication/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('all_images assets test', () {
    expect(true, File(AllImages.bastion).existsSync());
    expect(true, File(AllImages.green).existsSync());
    expect(true, File(AllImages.greenhouse).existsSync());
    expect(true, File(AllImages.intersect).existsSync());
    expect(true, File(AllImages.logo).existsSync());
  });
}
