// Variavel 

vel_h       = 0;
vel_h_max   = 2;

vel_v       = 0;
vel_v_max   = 2;

controles   = 5;

    
esp         = 30;// Espaço entre eles

larg        = (controles-1)*esp; // a largura total

ini_x       = room_width/2-larg/2; // A tela dividido por dois menos a largura divido por dois 
meu_y       = room_height/10-10;


pode_perder = false;

correndo    = true;

timer       = 60;
timer_r     = timer;



mover = function ()
{
    var  _left  = keyboard_check(ord("A"))or keyboard_check(vk_left);
    var  _up    = keyboard_check(ord("W"))or keyboard_check(vk_up);
    var  _right = keyboard_check(ord("D"))or keyboard_check(vk_right);
    var  _down  = keyboard_check(ord("S")) or keyboard_check(vk_down);
    
    vel_h = (_right-_left)*vel_h_max
    
    move_and_collide(vel_h,0,obj_parede);
    
    vel_v = (_down- _up)*vel_v_max;
    
    move_and_collide(0,vel_v,obj_parede);
    
   // image_speed = 16;
    
    
   image_speed = 1;
    if (_left) {
    	image_speed = 0.5;
    }
    
}

desenha_sem_controles = function ()
{

    // desenhando no for
    for (var i = 0; i < controles; i++) 
    {
    	draw_sprite_ext(spr_sem_controle,0,ini_x+i*esp,meu_y,1,1,0,c_white,1);
        
    }
    
}

desenha_controles = function ()
{
    image_speed = 1;
    // desenhando no for
    for (var j = 0; j < global.controles; j++) 
    {
    	draw_sprite(spr_controle,image_index,ini_x+j*esp,meu_y);
        
    }
    
}

perder_controle = function ()
{
    if (pode_perder) 
    {
        timer--;
        
        image_alpha = lerp(image_alpha,0.1,0.1);
        if (timer<=0 ) 
        {
            if (global.controles>0) 
            {
            	global.controles--;
            }
            
            if (global.controles<=0) 
            {
            	//room_restart();
                with (obj_controador) 
                {
                	exibir_recorde     = true;
                    para_tempo         = true;
                    parar = true;
                    
                }
               

            }
            
            image_alpha = 1;
            timer = timer_r;
        	pode_perder = false;
           //show_message("foi");
        }
    	
    }
}
