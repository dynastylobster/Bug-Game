/// @description Insert description here
// You can write your code in this editor
hit = false;
angry = true;
if HP = 0 {
instance_create_layer(x,y,layer,ExplodeObject);
ParticleBoom(x,y);
instance_destroy();
}