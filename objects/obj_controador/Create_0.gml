// Variaveis
timer       = 60;
timer_r     = timer;

tempo_jogo  = 0;
record      = 0;


t_comi      = 300;
t_s_comi    =t_comi;

exibir_recorde = false;
para_tempo      = false;

parar  = false;

audio_play_sound(snd_never_weve,0,true)

// Controlando a quantidade de garota que posso soltar?

cria_garotas    = function() 
{
    timer--; // Contagem regresiva
    
    // Se o tempo for menorou igual que zero
    if (timer<= 0 ) 
    {
    	timer = timer_r;
        instance_create_layer(room_width,room_height/2,"mulheres",obj_girl1);
    }
   
}

cria_comida     = function ()
{
    t_comi--;
    if (t_comi <=0 ) 
    {
          t_comi = t_s_comi
          var _destino  = random_range(130,250);
          var _comida = instance_create_layer(room_width+20,_destino,"comida",obj_comida);
          _comida.sprite_index = choose(spr_barra_chocalate,spr_batata_frita,spr_coxinha,spr_hanburger,spr_barra_chocalate,spr_batata_frita,spr_coxinha,spr_hanburger)
          _comida.hspeed --;
    }
    
    
}

controla_tempo  = function ()
{
    tempo_jogo += 1/60;
    if (tempo_jogo > record) 
    {
    	record = tempo_jogo;
    }
    
    if (global.controles<0) 
    {
    	exibir_recorde = true;
    }
    
}

desenha_record  = function ()
{
    var meio_x   = room_width/2;
    var meio_y   = room_height/2;
    draw_sprite_ext(spr_escore,0,meio_x,meio_y,1,1,0,c_white,1);
    draw_sprite_ext(spr_escore,1,meio_x,meio_y,1,1,0,c_white,1);
    
    
    draw_set_halign(1);
    draw_set_colour(c_black);
    
    draw_text(meio_x,meio_y-45,"SCORE");
    
    draw_text(meio_x,meio_y+30,record);
    
    draw_set_halign(-1);
    draw_set_colour(c_white);
}

para_tudo = function ()
{ 
    // pegar o layer do gb
    layer_hspeed("bg_asfalto",0);
    layer_hspeed("bg_campo",0);
    
    if (instance_exists(obj_comida))
    {
    	obj_comida.hspeed      = 0;
        obj_comida.image_speed = 0;
        
    }
    if (instance_exists(obj_girl1)) 
    {
    	obj_girl1.correndo = false;
    	obj_girl1.image_speed = 0;
    }
    if (instance_exists(obj_player)) 
    {
    	obj_player.image_speed = 0;
        obj_player.correndo = false;
    }
    
    if (keyboard_check(vk_space)) 
    {
    	
        //show_message("foi");
        
        room_restart();
        audio_stop_all();
        
        
        global.garotas      =  0;
    }
}