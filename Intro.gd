extends Node2D

@onready var intro_audio = $AudioStreamPlayer2D


func _ready():
	intro_audio.play()
	$AnimationPlayer.play("Fade in")
	await get_tree().create_timer(6).timeout
	$AnimationPlayer.play("Fade out")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://start_menu.tscn") 
	
