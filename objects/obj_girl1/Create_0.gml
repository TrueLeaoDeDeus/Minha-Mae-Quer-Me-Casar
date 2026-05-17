timer       = 60;
timer_r     =timer


// Variavel
vel         = 2;
vel_y        = 2;

mover       = function ()
{
      if (x <= 0)
   {
       x = 0;
       vel = abs(vel);
   }
   
   if (x >= room_width)
   {
       x = room_width;
       vel = -abs(vel);
   }
    
 
    
}