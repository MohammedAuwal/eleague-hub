export function generateLeagueInviteId(leagueId: string) {
  return leagueId.substring(0, 6).toUpperCase();
}