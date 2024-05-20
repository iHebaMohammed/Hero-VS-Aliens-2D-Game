extends Node2D


var score=0

func _ready():
	get_node("Score/ScoreText").text = "Score 0"
	
	
func increaseScore():
	score+=10
	get_node("Score/ScoreText").text = "Score " + str(score)

