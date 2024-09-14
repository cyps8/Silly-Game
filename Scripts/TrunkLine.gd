extends Line2D

@export var refPoints: Array[Node2D]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotation = -get_parent().rotation
	var fixedPoints: Array[Vector2] = []
	for point in refPoints:
		fixedPoints.append(point.global_position - global_position)
	points[0] = fixedPoints[0]
	points[1] = fixedPoints[0] + ((fixedPoints[1] - fixedPoints[0]) / 2)
	points[2] = fixedPoints[1]
	points[3] = fixedPoints[1] + ((fixedPoints[2] - fixedPoints[1]) / 2)
	points[4] = fixedPoints[2]
	points[5] = fixedPoints[2] + ((fixedPoints[3] - fixedPoints[2]) / 2)
	points[6] = fixedPoints[3]
