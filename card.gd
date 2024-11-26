extends Panel

enum Suit {SPADE, HEART, DIAMOND, CLUB}

var rank: int
var suit: Suit

@onready var rank_top_label = get_node("RankTop")
@onready var rank_bottom_label = get_node("RankBottom")
@onready var suit_label = get_node("Suit")



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rank_string = str(rank)
	if rank == 1:
		rank_string = "A"
	if rank == 11:
		rank_string = "J"
	if rank == 12:
		rank_string = "Q"
	if rank == 13:
		rank_string = "K"
		
	rank_top_label.text = rank_string
	rank_bottom_label.text = rank_string
	
	if suit == Suit.SPADE:
		suit_label.text = "spade"
	elif suit == Suit.HEART:
		suit_label.text = "heart"
	elif suit == Suit.DIAMOND:
		suit_label.text = "diamond"
	elif suit == Suit.CLUB:
		suit_label.text = "club"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
