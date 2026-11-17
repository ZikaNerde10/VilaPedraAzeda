//image_blend = c_white;


//Morte
if(vida <= 0)
{
    instance_create_layer(x, y, "instances", obj_moeda);
    instance_destroy();
	exit;
}

//tempo de ataque
if(tempo_ataque > 0)
{
	tempo_ataque --;
}

//Distancia do Jogador
var _distancia = point_distance(x,y,obj_player.x,obj_player.y);

//Estado IDLE
if(estado == "IDLE")
{
	if(_distancia <= raio_deteccao)
	{
		estado = "CHASE";
	}
}


//Estado CHASE
if(estado == "CHASE")
{
	show_debug_message("Eu to te vendo safado");
	
	if(_distancia <= raio_ataque)
	{
		estado = "ATTACK";
	}
	else
	{
		var _direcao = point_direction(x,y,obj_player.x,obj_player.y);
	
		x += lengthdir_x(vel,_direcao);
		y += lengthdir_y(vel,_direcao);
	}
}


//Estado Attack
if(estado == "ATTACK")
{
	if(_distancia > raio_ataque)
	{
		estado = "CHASE"
	}
	else
	{
		if(tempo_ataque <= 0)
		{
			show_debug_message("toma essa!")
			
			tempo_ataque = 60;
		}
	}
}