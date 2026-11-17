
var _direction = point_direction(x,y,mouse_x,mouse_y);

var _ataque = instance_create_depth(x, y, depth,obj_attack);

_ataque.image_angle = _direction;