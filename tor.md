# Running bet over chips and ln tor nodes.

## Setting up tor over chips and ln nodes
Using tor we can create a virtual host with an onion address which can provide anonymity in chaneel establishment and in making deposits and withdrawls of the CHIPS. You can find the guide to setup the chips and ln nodes using tor [here](https://github.com/chips-blockchain/lightning/blob/master/doc/TOR.md). 

## Direction of ln channels during the game
As we know during the game ln payments happens from players to dealer to record the gaming events, for this to happen at the start of the game players request dealer ln uri and to this uri players establish the ln channels. Here the catch is ln channel can't be established from a non-tor node to a tor node and vice-versa is not true. 

## Who can enforce the use of tor
So from my observation if the dealer is running a tor ln only the players which are running tor ln can establish ln channels with the dealer. Its like if the dealer wants it can kind of enforce every ln channel must be over tor. If the dealer is running a non-tor ln node(simple ln node) in which case the irrespective of whether the player ln node is running over tor or not it can able to establish the ln channel with the dealer.

## Configuring tor
Having anonymous is the choice we left to the players and dealers, since one won't be affecting the other. For these reasons we aren't making one entity to enforce whether if the ln and chips payments happen over tor or not. So we made it configurable for both the players and dealers. what this mean is, say if the dealer configures address type as torv3 in the `dealer_config.json` then when the dealer node gets started first it make sure its running chips and ln over tor and publish this info with the players. So on the player side player configures the tor setting in `player_config.json` and before player joining the table it checks whether its tor configuration matches with the dealer and if not player drops connecting to that dealer.

## Different possibilities and observation
Below is the table that depicts the testing of the exisiting ln setup, where the channel direction is from A->B meaning node A is trying to establish the channel with node B.

|  | Node B tor ln | Node B non-tor ln |
| --------------- | --------------- | --------------- |
| Node A tor ln | yes(case1) | yes(case2) |
| Node A non-tor ln | yes(case3) | yes(case3) |

