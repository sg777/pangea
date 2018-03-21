## Players joining the table

For simplicity, _**DCV**_ defines some predfined table sizes, the players choses whichever may be the table size they are interested in and joins the table. The steps to be part of the joining table are as follows:

1. DCV, a trusted notarized node on the network, a DCV daemon will be running when the DCV starts the table.
2. It looks for BVV over the network, BVV may/maynot be a notarized node on the network, anynode in the network can act as BVV. 
3. Once the BVV is present in the network, a daemon of it will be running and both DCV and BVV will wait for the players to join the network.
4. In order to player, player joins the table by sending "join_req" to the DCV. The join request consists the publickey which is unique to the player.

``` JSON
{
	"method":	"join_req",
	"pubkey":	"1460e77d5c02d00348f9f092b7806a89b2174291b9cc61ef3b22f864a3149848"
}
```	

5. DCV accepts the request and responds with a playerID. Here playerID signifies the number of positions a player situated left to the dealer. 

``` JSON
{
	"method":	"join_res",
	"peerid":	1,
	"pubkey":	"d3389429b1293c1ba1f14e3970c2d6abd4463deeb55d586973cf004a2894ec3e"
}
```

6. Once if the number of players joined equals to the table size, the deck initialization starts begins, DCV initiates deck initialization sending "init" command to the players and BVV.


