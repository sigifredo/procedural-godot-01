extends Node3D
class_name Main

var width:int = 64;
var height:int = 64;

var roomWidthMin:int = 3;
var roomWidthMax:int = 5;
var roomLengthMin:int = 3;
var roomLengthMax:int = 5;


var hallway_scene:PackedScene = preload('res://objetos/Hallway.tscn')
var room_scene:PackedScene = preload('res://objetos/Room.tscn')


func _ready() -> void:
	add_child(room_scene.instantiate())


func _get_start_room_rect() -> Rect2i:
	var roomWidth:int = randi_range(roomWidthMin, roomWidthMax)
	var availableWidthX:int = int(width / 2.0) - roomWidth
	var randomX:int = randi_range(0, availableWidthX)
	var roomX = randomX + int(width / 4.0)

	var roomLength:int = randi_range(roomLengthMin, roomLengthMax)
	var availableLengthY:int = int(height / 2.0) - roomLength
	var randomY:int = randi_range(0, availableLengthY)
	var roomY = randomY + int(height / 4.0)

	return Rect2i(roomX, roomY, roomWidth, roomLength)
