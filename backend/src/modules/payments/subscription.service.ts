export function isPremium(expiresAt: Date) {
  return new Date() < expiresAt;
}