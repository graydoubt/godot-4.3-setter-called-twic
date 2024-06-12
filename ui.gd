extends CanvasLayer

@export var my_button: Button:
	set(value):
		my_button = value
		print("%s: setting button" % [self])
		_connect_button_signal(value)

@export_node_path("Button") var my_button_path: NodePath:
	set(value):
		my_button_path = value
		print("%s: setting button path" % [self])

@export var my_label: Label:
	set(value):
		my_label = value
		print("%s: setting label" % [self])

@export var my_label2: Label:
	set(value):
		my_label2 = value
		print("%s: setting label2" % [self])

@export var my_int: int:
	set(value):
		my_int = value
		print("%s: setting int" % [self])

@export var my_string: String:
	set(value):
		my_string = value
		print("%s: setting string" % [self])


func _connect_button_signal(button: Button) -> void:
	button.pressed.connect(_on_button_pressed)


func _on_button_pressed() -> void:
	print("Button was pressed.")
