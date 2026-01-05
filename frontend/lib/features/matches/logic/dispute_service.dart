enum DisputeVote { approve, reject }

class Dispute {
  final String matchId;
  final Map<String, DisputeVote> votes = {};
  bool resolved = false;

  void castVote(String userId, DisputeVote vote) {
    if (!resolved) {
      votes[userId] = vote;
    }
  }

  bool get isApproved =>
      votes.values.where((v) => v == DisputeVote.approve).length >
      votes.values.length / 2;

  bool get isRejected =>
      votes.values.where((v) => v == DisputeVote.reject).length >
      votes.values.length / 2;
}