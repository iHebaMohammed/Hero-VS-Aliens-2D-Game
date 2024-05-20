extends Control

onready var textLabel=get_node("TextureRect/RichTextLabel")


func _ready():
	textLabel.percent_visible=0
	get_node("TextureRect/Button").visible=false


func _process(delta):
	textLabel.percent_visible = textLabel.percent_visible + (0.04*delta)
	if textLabel.percent_visible ==1:
		get_node("TextureRect/Button").visible=true


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
