export function logEvent(
  message: string,
  context?: any,
) {
  console.log('[LOG]', message, context);
}