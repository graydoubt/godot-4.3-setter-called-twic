extends CanvasLayer

@export var my_button: Button:
	set(value):
		my_button = value
		print("setting button")
		_connect_button_signal(value)


func _connect_button_signal(button: Button) -> void:
	button.pressed.connect(_on_button_pressed)


func _on_button_pressed() -> void:
	print("Button was pressed.")
