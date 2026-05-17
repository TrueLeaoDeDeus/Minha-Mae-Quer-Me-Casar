// Variaveis
timer       = 60;
timer_r     = timer;

audio_play_sound(snd_never_weve,0,true)

// Controlando a quantidade de garota que posso soltar?

cria_garotas = function() 
{
    timer--; // Contagem regresiva
    
    // Se o tempo for menorou igual que zero
    if (timer<= 0 ) 
    {
    	timer = timer_r;
        instance_create_layer(room_width,room_height/2,"mulheres",obj_girl1);
    }
   
}