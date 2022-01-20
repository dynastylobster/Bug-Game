/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,EnemyParentObject) {
	if instance_place(x,y,EnemyAreaKeySpawnObject) {
		var key_location = instance_place(x,y,EnemyAreaKeySpawnObject);
		with (key_location) {
				instance_create_layer(x,y,layer,KeyBugCollectObject);
				instance_destroy();
			}	
		
		}
	}
	
if place_meeting(x,y,EnemyParentObject) and place_meeting(x,y,PlayerObject) {
	with(PlayerObject) {
		while instance_place(x,y,EnemyOnlyBlockObject) {
		var EnemyWall = instance_place(x,y,EnemyOnlyBlockObject)
		if EnemyWall.x < x then x++
		if EnemyWall.y < y then y++
		if EnemyWall.x > x then x--
		if EnemyWall.y > y then y--
			}
		}
	global.battle = true;
	} else global.battle = false;