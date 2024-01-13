import 'dart:math';
import 'package:kata_machine/two_crystal_balls.dart';
import 'package:test/test.dart';

void twoCrystalBallsTest() {
  test("two crystal balls", () {
    for (int i = 0; i <= 100; ++i) {
      var idx = Random().nextInt(10000);
      var data = List.generate(10000, (i) => i < idx ? false : true);
      expect(twoCrystalBalls(data), idx);
    }

    expect(
      twoCrystalBalls(List.generate(821, (i) => i == 820 ? true : false)),
      820,
    );
    expect(twoCrystalBalls(List.filled(821, false)), -1);
  });
}
