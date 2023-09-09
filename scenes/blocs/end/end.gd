class_name EndBloc extends Bloc


signal end_game()


func _on_end_detector_body_entered(body: Node3D) -> void:
  if body is Player:
    Random.rng.randomize()
    body.end_map()
    end_game.emit()
    GlobalTimer.stop()
    GlobalTimer.reset()
