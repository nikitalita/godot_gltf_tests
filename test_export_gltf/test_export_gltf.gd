extends Node3D


func _ready():
	export_and_import_gltf()
	get_tree().quit()

func export_and_import_gltf():
	var thing = load("res://ToyCar.glb")
	var node = thing.instance()
	var scene: PackedSceneGLTF = PackedSceneGLTF.new()
	var err = scene.export_gltf(node,"res://ToyCar-export-test.gltf")
	if err == OK:
		print("Exported gltf!")
		scene.import_gltf_scene("res://ToyCar-export-test.gltf")
	else:
		print("Export failed!!!!!")
