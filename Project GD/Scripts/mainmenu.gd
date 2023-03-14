extends Node2D


func _ready():
	$forestsong.play(true)


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/mapascene.tscn")


func _on_Button2_pressed():
	$manuelgomes.play()
