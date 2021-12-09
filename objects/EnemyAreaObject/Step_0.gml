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