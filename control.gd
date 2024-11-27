extends Control

@onready var finalizar = $ColorRect/MarginContainer/VBoxContainer/finalizar as Button

# Called when the node enters the scene tree for the first time.
func _ready():
	finalizar.button_down.connect(on_exit_pressed)

func on_exit_pressed() -> void:
	get_tree().quit()
