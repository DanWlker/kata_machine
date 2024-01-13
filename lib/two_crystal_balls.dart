import 'dart:math';

/// Question:
/// Given only two crystal balls dropped from a height,
/// determine the point where they will break;
/// If we jump to middle, and it breaks, we have to run 1/2 N times, O(N)
///
/// Solution;
/// We need to jump by a fundamental unit of N (instead of constants as it gets dropped),
/// ex. Sqrt(N)
/// Therefore we:
///   Jump by at Sqrt(N) size for at most  Sqrt(n) times until first ball breaks
///   We walk back to the last know good point
///   Then do a Sqrt{N} amount linear search until second ball breaks
///   Hence runtime is O(Sqrt(N))
int twoCrystalBalls(List<bool> breaks) {
  final jumpAmount = sqrt(breaks.length).floor();

  var i = jumpAmount;
  for (; i < breaks.length; ++i) {
    if (breaks[i]) {
      // First crystal ball breaks
      break;
    }
  }

  i -= jumpAmount;

  // The next jump point could be the intersection as well, so we have to use <=
  for (var j = 0; j <= jumpAmount && i < breaks.length; ++j, ++i) {
    if (breaks[i]) {
      return i;
    }
  }

  return -1;
}
