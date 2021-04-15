/// @description Insert description here
// You can write your code in this editor

hour = date_get_hour(date_current_datetime());
minute = date_get_minute(date_current_datetime());
second = date_get_second(date_current_datetime());


hour_string = string(hour);

if(string_length(hour_string)==1)
{
	hour_string = "0"+hour_string;
}

minute_string = string(minute);

if(string_length(minute_string)==1)
{
	minute_string = "0"+ minute_string;
}

second_string = string(second);

if(string_length(second_string)==1)
{
	second_string = "0"+ second_string;
}

if(minute_string== "00")
{
	instance_destroy();
}