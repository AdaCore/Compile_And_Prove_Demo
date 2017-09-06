package Sensor_Average is

   type Temperature is delta 0.1 range -100.0 .. 100.0;

   procedure Get_Temperature (Temp : out Temperature);

end Sensor_Average;
