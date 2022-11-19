extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var msaa_mode = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _input(event):
	if event.is_action_pressed("ui_accept"):
		if self.msaa_mode == 0:
			self.msaa_mode = 2
		else:
			self.msaa_mode = 0
		get_viewport().set_msaa(self.msaa_mode)
		
		$"Label".set_text(
			"MSAA mode: " + str(self.msaa_mode)
		)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
