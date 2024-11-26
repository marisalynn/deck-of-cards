extends CanvasLayer

signal reset

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$NoMoreCards.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_reset_button_pressed() -> void:
	reset.emit()
	$NoMoreCards.hide()


func show_message():
	$NoMoreCards.show()
