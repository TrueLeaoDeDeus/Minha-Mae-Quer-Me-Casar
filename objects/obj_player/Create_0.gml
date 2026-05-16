// Variavel 

vel_h       =0;
vel_h_max   =2

vel_v       =0;
vel_v_max   =2;




mover = function ()
{
    var  _left  = keyboard_check(ord("A"));
    var  _up    = keyboard_check(ord("W"));
    var  _right = keyboard_check(ord("D"));
    var  _down  = keyboard_check(ord("S"));
    
    vel_h = (_right-_left)*vel_h_max
    
    move_and_collide(vel_h,0,obj_parede);
    
    vel_v = (_down- _up)*vel_v_max;
    
    move_and_collide(0,vel_v,obj_parede);
    
   // image_speed = 16;
    
    
   image_speed = 1;
    if (_left) {
    	image_speed = 0.4;
    }
    
    
}