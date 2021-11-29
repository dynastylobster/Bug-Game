// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//@param {Number} Xposition
//@param {Number} Yposition
function SparkleParticleBoom(_Xposition,_Yposition){
	var Xposition = argument0;
	var Yposition = argument1;
	repeat(15) {
instance_create_layer(Xposition,Yposition,layer,SparkleParticleObject);
	}
}