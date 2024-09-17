extends Node2D

var score: int = 0
@export var target: int = 5
@export var scoreTxt: Label
@export var win: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	win.scale = Vector2(0,0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func DestroyMachine():
	print("Called!!")
	score += 1
	scoreTxt.text = str(score) + " borkened "
	if (score >= target):
		win.scale = Vector2(1,1)
		
