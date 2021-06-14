extends SceneTree


func _ready():
	export_and_import_gltf()
	quit()

func export_and_import_gltf():
	var pckscene: PackedSceneGLTF = PackedSceneGLTF.new()

	var scene_res = load("res://ToyCar.glb")
	var node = scene_res.instance()

	var err = pckscene.export_gltf(node,"res://ToyCar-export-test.gltf")
	if err == OK:
		print("Exported gltf!")
		pckscene.import_gltf_scene("res://ToyCar-export-test.gltf")
	else:
		print("Export failed!!!!!")

