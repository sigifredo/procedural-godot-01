extends Node3D
class_name Room


@onready var wall_01: RoomWall = $"wall-01"
@onready var wall_02: RoomWall = $"wall-02"
@onready var wall_03: RoomWall = $"wall-03"
@onready var wall_04: RoomWall = $"wall-04"


func _ready() -> void:
	add_halways()


func add_halways() -> void:
	print('add_halways')

	for door in get_doors():
		var hw_tmp: Hallway = Hallway.new()

		# hw_tmp.rotation.y = door.w + (PI / 2.0)
		hw_tmp.position.x = door.x
		hw_tmp.position.y = door.y
		hw_tmp.position.z = door.z

		print(hw_tmp)
		add_child(hw_tmp)
		print("Children count:", get_child_count())
		print("Children count:", get_children())


func get_doors() -> Array:
	return [
		wall_01.get_door_position(),
		wall_02.get_door_position(),
		wall_03.get_door_position(),
		wall_04.get_door_position()
	]
