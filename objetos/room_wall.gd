extends Node3D
class_name RoomWall

@onready var left: CSGBox3D = $left
@onready var right: CSGBox3D = $right

const DOOR_SIZE:int = 4
var door_position:int = 0

func _ready() -> void:
	door_position = randi_range(-7, 7)
	var half_door:int = DOOR_SIZE / 2

	left.size.z = left.size.z + door_position - half_door
	right.size.z = right.size.z - door_position - half_door

	left.position.z = door_position - half_door - (left.size.z / 2.0)
	right.position.z = door_position + half_door + (right.size.z / 2.0)
