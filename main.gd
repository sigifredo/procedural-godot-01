extends Node3D

var width:int = 64;
var height:int = 64;

var roomWidthMin:int = 3;
var roomWidthMax:int = 5;
var roomLengthMin:int = 3;
var roomLengthMax:int = 5;


var hallway_scene:PackedScene = preload('res://objetos/Hallway.tscn')


func _ready() -> void:
	_draw_layout(_get_start_room_rect())


func _draw_layout(roomCandidateRect:Rect2i) -> void:
	var hallway = hallway_scene.instantiate()
	# hallway.translate(Vector3(roomCandidateRect.position.x, 0, roomCandidateRect.position.y))

	add_child(hallway)


func _get_start_room_rect() -> Rect2i:
	var roomWidth:int = randi_range(roomWidthMin, roomWidthMax)
	var availableWidthX:int = (width / 2) - roomWidth
	var randomX:int = randi_range(0, availableWidthX)
	var roomX = randomX + (width / 4)

	var roomLength:int = randi_range(roomLengthMin, roomLengthMax)
	var availableLengthY:int = (height / 2) - roomLength
	var randomY:int = randi_range(0, availableLengthY)
	var roomY = randomY + (height / 4)

	return Rect2i(roomX, roomY, roomWidth, roomLength)
