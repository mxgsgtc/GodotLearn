extends Timer

var pipe_scn = preload("res://Objects/Pipe.tscn")#将要实例化的场景文件预加载进来

func _ready():
	add_to_group("GAME_STATE")#加入GAME_STATE组
	connect("timeout",self,"on_timeout")#将"timeout"信号连接到"on_timeout"方法
	
func on_timeout():
	var pipe = pipe_scn.instance()#实例化
	add_child(pipe)#将实例化的结果作为自身的子节点

func on_game_over():
	print("PipeManager game over")
	paused = true#停止计时
