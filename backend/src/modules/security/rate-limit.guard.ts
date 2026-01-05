const requests: Record<string, number> = {};

export function canRequest(userId: string) {
  requests[userId] = (requests[userId] || 0) + 1;
  return requests[userId] < 100;
}