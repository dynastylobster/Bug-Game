/// @description Insert description here
// You can write your code in this editor
if !instance_exists(PlayerSheildObject) {
	instance_create_layer(other.x,other.y,layer,PlayerSheildObject);
	}
audio_play_sound(SheildSound,0,0);
repeat(8) {
instance_create_layer(x,y,layer,SparkleParticleObject)
}
instance_destroy();