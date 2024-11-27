class_name Mainmenu
extends Control

@onready var iniciar = $MarginContainer/HBoxContainer/VBoxContainer/iniciar as Button

@onready var salir = $MarginContainer/HBoxContainer/VBoxContainer/salir as Button

@onready var iniciar_nivel = preload("res://main.tscn") as PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	iniciar.button_down.connect(on_start_pressed) 
	salir.button_down.connect(on_exit_pressed)


func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(iniciar_nivel)

func on_exit_pressed() -> void:
	get_tree().quit()
