There is this possiblity that a player might have been disconnected accidentally and the game should allow the provision that player could reconnect with in the time frame given.

Data needed by the player to reconnect is
1. public/private key pair
2. Initial permutation done by the player
3. Initial shuffled deck of the cards
4. Shamir secret shards with the player
5. State of the game

That indicates, player should have all the mesages that have exchanged inorder to resume the play. Depending up on when the events will be recorded on the chain, either this data needs to be stored locally or it can be imported from the chain when the player reconnects.

Here only the game state is recorded on the chain and the other parameters like player keys, shamir shards, deck permutations and card keys will never be recorded on the chain. So all these parameters stored locally while the game is in progress with timestamps, so that they can be used while reconnecting.
