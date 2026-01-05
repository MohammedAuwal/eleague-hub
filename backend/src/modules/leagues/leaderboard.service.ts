export function buildGlobalLeaderboard(
  results: { userId: string; points: number }[],
) {
  return results.sort((a, b) => b.points - a.points);
}