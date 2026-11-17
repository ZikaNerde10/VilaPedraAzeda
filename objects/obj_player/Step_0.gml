if(tempo_invulneravel > 0)
{
	tempo_invulneravel -- ;
	
	if(tempo_invulneravel <= 0)
	{
		invulneravel = false;
	}
}


if(invulneravel)
{
	tempo_piscar++;
	
	if(tempo_piscar>= 5)
	{
		if(image_blend == c_white)
		{
			image_blend = c_red;
		}
		else
		{
			image_blend = c_white;
		}
		
		tempo_piscar = 0;
	}
}
else
{
	image_blend = c_white;
	tempo_piscar = 0;
}
