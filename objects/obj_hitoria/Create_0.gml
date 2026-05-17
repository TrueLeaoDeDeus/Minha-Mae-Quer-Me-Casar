
checa_tecla = function ()
{
       // Se eu soltar ospsce pula para a proxima frame so sprite
   if (keyboard_check_released(vk_space)) 
   {
           image_index++;
   }
    
   // SE a imagem maior que o numero de image do sprite muda de room
   
   if (image_index > image_number-1)
   {
       room_goto(rm_run);
   }
    
}
