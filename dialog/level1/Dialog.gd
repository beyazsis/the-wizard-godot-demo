extends Control
signal hareketsizlik
signal hareketlilik
func _ready():
	emit_signal("hareketsizlik")
func _on_DialogBox_dialog_bitti():
	emit_signal("hareketlilik")
