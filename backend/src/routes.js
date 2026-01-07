const express = require("express");
const router = express.Router();

/**
 * In-memory vote store
 * (Later you can replace this with DB like DynamoDB / RDS)
 */
let votes = {
  cpp: 0,
  python: 0,
  node: 0,
  java: 0
};

/**
 * Health check
 * Used by Kubernetes readiness/liveness probes
 */
router.get("/health", (req, res) => {
  res.status(200).send("OK");
});

/**
 * Get current votes
 * GET /api/votes
 */
router.get("/votes", (req, res) => {
  res.json(votes);
});

/**
 * Cast a vote
 * POST /api/vote/:language
 */
router.post("/vote/:language", (req, res) => {
  const language = req.params.language.toLowerCase();

  if (!votes.hasOwnProperty(language)) {
    return res.status(400).json({
      error: "Invalid voting option"
    });
  }

  votes[language] += 1;

  res.json({
    message: `Vote recorded for ${language}`,
    votes
  });
});

module.exports = router;
