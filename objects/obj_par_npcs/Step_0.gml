if (instance_exists(obj_dialogo)) exit;
if (instance_exists(coiso)&& distance_to_object(coiso)<10){
	can_talk=true;
}else{
	can_talk=false
}