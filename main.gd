extends Node3D

var xr_interface: XRInterface

func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR iniciado corretamente")
		
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		
		get_viewport().use_xr = true
	else:
		print("OpenXR no pudo inicializarse, por favor verifique que su visor VR este conectado")
		
		


func _on_pickable_object_grabbed(pickable: Variant, by: Variant) -> void:
	get_tree().quit()
	 # Replace with function body.
