extends Button

@export var my_icon: Texture2D:
	set(value):
		my_icon = value
		icon = value
		print("%s: setting icon" % [self])
