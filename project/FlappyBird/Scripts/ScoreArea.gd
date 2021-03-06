extends Area2D


func _ready():
	add_to_group("GAME_STATE")
	connect("body_exited",self,"_on_body_exited")
	
func _on_body_exited(_body):
	if _body.name == "Bird":#先通过body的名字判断一下所撞之物是否为"Bird"
		AudioManager.play("sfx_point")#音效
		GameData.score += 1
		get_tree().call_group("SCORE","on_score_updated",GameData.score)
		print("得分！！！！")
		
func on_game_over():
	#call_deferred("set_monitoring",false)
	disconnect("body_exited",self,"_on_body_exited")#得分区域停止触发
