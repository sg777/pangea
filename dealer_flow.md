1. The dealer checks if all the players are ready and if all the players are ready then the dealer starts the game state machine by calling `bet_initiate_statemachine` methid which sends dealer method to all the playing nodes.
2. Upon receiving the dealer method, the player next to the dealer responds with dealer_ready.
3. Upon receiving the dealer_ready by the dealer from the player, the dealer starts the deck shuffling process by calling the method `turn`.

