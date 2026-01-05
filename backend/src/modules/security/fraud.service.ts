export function detectSuspiciousActivity(
  matchesPlayed: number,
  winRate: number,
) {
  if (matchesPlayed > 20 && winRate > 0.95) {
    return true;
  }
  return false;
}