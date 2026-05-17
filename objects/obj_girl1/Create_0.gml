
// Variavel
vel_x           = random_range(1,4);
vel_y           = random_range(1,4);

randomize();

sprite_index = choose(spr_garota_0,spr_garota_1,spr_garota_2,spr_garota_3,spr_garota_4);

mover           = function ()
{
   // SE subi muito deço
    if (y <= 130 or y >= room_height-90) vel_y = -vel_y;
  
    
    y += vel_y;
    
    x -=vel_x;
    
    
    if (x<-10) 
    { 
        instance_destroy();
        //show_message("foi");
    }
}