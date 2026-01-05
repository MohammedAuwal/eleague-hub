export function canSubmitResult(
  userId: string,
  matchParticipants: string[],
) {
  return matchParticipants.includes(userId);
}