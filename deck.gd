extends Button

signal cards_depleted

enum Suit {
	SPADE, 
	HEART,
	DIAMOND, 
	CLUB
}

var cards: Array[Vector2]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset_deck()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func draw_card():
	if cards.size() == 0:
		cards_depleted.emit()
		disabled = true
	else:
		# pick a rank and suit
		return cards.pop_at(randi() % cards.size())

func reset_deck():
	disabled = false
	cards.clear()
	
	# Generate cards
	var all_suits = [Suit.SPADE, Suit.HEART, Suit.DIAMOND, Suit.CLUB]
	for rank in range(1,3):
		for suit in all_suits:
			cards.push_front(Vector2(rank, suit))
