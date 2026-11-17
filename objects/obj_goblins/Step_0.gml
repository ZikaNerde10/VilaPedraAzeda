//image_blend = c_white;

if(vida <= 0)
{
    instance_create_layer(x, y, "instances", obj_moeda);
    instance_destroy();
}