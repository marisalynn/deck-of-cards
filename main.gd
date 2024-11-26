extends Node

@export var card_scene: PackedScene
var card_position: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset_deck()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_deck_pressed() -> void:
	var rank_suit = $Deck.draw_card()
	
	if rank_suit:
		var card = card_scene.instantiate()
		card.rank = rank_suit[0]
		card.suit = rank_suit[1]
	
		card.position = card_position
		card_position[0] += 10
	
		add_child(card)


func reset_deck():
	card_position = Vector2(400.0, 208.0)
	get_tree().call_group("cards", "queue_free")
	$Deck.reset_deck()


func _on_deck_cards_depleted() -> void:
	$HUD.show_message()
