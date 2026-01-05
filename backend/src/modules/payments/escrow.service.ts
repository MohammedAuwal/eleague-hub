interface Escrow {
  leagueId: string;
  totalAmount: number;
  locked: boolean;
}

const escrows: Escrow[] = [];

export function createEscrow(leagueId: string, amount: number) {
  escrows.push({
    leagueId,
    totalAmount: amount,
    locked: true,
  });
}

export function distributePrize(
  leagueId: string,
  winners: { userId: string; amount: number }[],
) {
  const escrow = escrows.find(e => e.leagueId === leagueId);
  if (!escrow || !escrow.locked) return;

  escrow.locked = false;
  // trigger payout provider here
}