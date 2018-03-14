The format of the messages which are exchanged among the entities while the game played are defined here.

As defined in Pangea every entity in the game is associated with a key/value pair. When the game starts each player publishes the **init** message, which contains the player public key and the randomly shuffled deck of initial cards.

```json
{
	"messageid":	"init",
	"playerid":	0,
	"range":	2,
	"publickey":	"93bf6af448febc759e763a17e0de3709b3f432c2958b30dd3db05928a316a55a",
	"playercards":	["e8e7c76ad79c914029d81f21c1b1697c779042f5d1e3060aa28a853e8f15d73f", "42726671348e7ad3c322a9f81dbe5ee369b3af3f3c70e0beb6482dae9825261d"]
} 


