// Variaveis
timer       = 60;
timer_r     = timer;

tempo_jogo  = 0;
record      = 0;


t_comi      = 300;
t_s_comi    =t_comi;

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

controla_tempo  = function ()
{
    tempo_jogo += 1/60;
    if (tempo_jogo > record) 
    {
    	record = tempo_jogo;
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