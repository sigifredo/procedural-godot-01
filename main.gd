extends Node3D
class_name Main


@onready var room: Room = $Room


var width:int = 64;
var height:int = 64;

var roomWidthMin:int = 3;
var roomWidthMax:int = 5;
var roomLengthMin:int = 3;
var roomLengthMax:int = 5;

var hallway_scene: PackedScene = preload('res://objetos/Hallway.tscn')

func _ready() -> void:
	# room.add_halways()
	pass

	# for door in room.get_doors():
	# 	var hw_tmp = hallway_scene.instantiate()
	# 	# var hw_tmp: Hallway = Hallway.new()
	# 	print(door)

	# 	hw_tmp.rotation.y = door.w + (PI / 2.0)
	# 	hw_tmp.position.x = door.x + (hw_tmp.get_size().z / 2)
	# 	hw_tmp.position.y = door.y
	# 	hw_tmp.position.z = door.z

	# 	add_child(hw_tmp)
	# 	break
