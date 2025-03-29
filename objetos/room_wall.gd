extends Node3D
class_name RoomWall

@onready var left: CSGBox3D = $left
@onready var right: CSGBox3D = $right

const DOOR_SIZE:int = 4
var _door_position: int = 0

func _ready() -> void:
	_door_position = randi_range(-8, 8)
	var half_door:int = DOOR_SIZE / 2

	left.size.z = left.size.z - _door_position - half_door
	right.size.z = right.size.z + _door_position - half_door

	left.position.z = _door_position + half_door + (left.size.z / 2.0)
	right.position.z = _door_position - half_door - (right.size.z / 2.0)


func get_door_position() -> Vector4:
	return Vector4(
		position.x,
		position.y,
		position.z + _door_position,
		rotation.y
	)
