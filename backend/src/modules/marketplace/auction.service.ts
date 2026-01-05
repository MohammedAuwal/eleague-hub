interface Bid {
  userId: string;
  amount: number;
}

interface Auction {
  listingId: string;
  bids: Bid[];
  endsAt: Date;
}

const auctions: Auction[] = [];

export function placeBid(
  listingId: string,
  userId: string,
  amount: number,
) {
  const auction = auctions.find(a => a.listingId === listingId);
  if (!auction) return;

  auction.bids.push({ userId, amount });
}