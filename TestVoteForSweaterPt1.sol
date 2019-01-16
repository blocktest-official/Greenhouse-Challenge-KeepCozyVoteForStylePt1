pragma solidity 0.4.25;

import "./VoteForSweaterPt1.sol";

contract TestVoteForSweaterPt1 is VoteForSweaterPt1 {

  function test_sweaterVote() {
    uint blueVotes = getVotes("blue");
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
  }
}
