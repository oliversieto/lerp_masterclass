import 'package:flutter_test/flutter_test.dart';
import 'package:learp_masterclass/models/lerp_model.dart';

void main() {
  group('calculate', () {
    test(
        'should return a calculation of LERP with begin 20, end 40 and percentage 80',
        () {
      final lerpModel = LerpModel(start: 20, end: 40, percentage: 80);
      final result = lerpModel.calculate();
      expect(result, 36);
    });

    test(
        'should return a calculation of LERP with begin 36, end 80 and percentage 20',
        () {
      final lerpModel = LerpModel(start: 36, end: 80, percentage: 20);
      final result = lerpModel.calculate();
      expect(result, 44.8);
    });

    test(
        'should return a calculation of LERP with begin 0, end 0 and percentage 0',
        () {
      final lerpModel = LerpModel(start: 0, end: 0, percentage: 0);
      final result = lerpModel.calculate();
      expect(result, 0);
    });

    test(
        'should return a calculation of LERP with begin 80, end 0 and percentage 100',
        () {
      final lerpModel = LerpModel(start: 80, end: 0, percentage: 100);
      final result = lerpModel.calculate();
      expect(result, 0);
    });

    test(
        'should return a calculation of LERP with begin 75, end 54 and percentage 100',
        () {
      final lerpModel = LerpModel(start: 75, end: 54, percentage: 100);
      final result = lerpModel.calculate();
      expect(result, 54);
    });

    test(
        'should return a calculation of LERP with begin 60, end 0 and percentage 0',
        () {
      final lerpModel = LerpModel(start: 60, end: 0, percentage: 0);
      final result = lerpModel.calculate();
      expect(result, 60);
    });
  });
}
