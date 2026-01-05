enum ProofStatus {
  pending,
  approved,
  rejected,
}

class MatchProof {
  final String matchId;
  final String uploaderId;
  final String imageUrl;
  ProofStatus status;
  String? rejectionReason;

  MatchProof({
    required this.matchId,
    required this.uploaderId,
    required this.imageUrl,
    this.status = ProofStatus.pending,
    this.rejectionReason,
  });
}

class ProofVerificationService {
  static void approve(MatchProof proof) {
    proof.status = ProofStatus.approved;
  }

  static void reject(
    MatchProof proof,
    String reason,
  ) {
    proof.status = ProofStatus.rejected;
    proof.rejectionReason = reason;
  }
}