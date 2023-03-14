extends KinematicBody2D

#VARIÁVEIS
var speed = 350

func _ready():
	pass
	
func _physics_process(delta):
	var movimento = Vector2.ZERO
	movimento.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	movimento.y = Input.get_action_raw_strength("ui_down")-Input.get_action_raw_strength("ui_up")
	move_and_slide(movimento*speed)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://scenes/fase4.tscn")
	
