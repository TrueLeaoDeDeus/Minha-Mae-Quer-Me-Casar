if (global.controles < 5) 
{
	global.controles++;
}

audio_play_sound(snd_pego,0,false);

instance_destroy(other);