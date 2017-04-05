with Avionics; use Avionics;

procedure Landing_Procedure (My_Plane : Plane'Class) is
begin
   while not My_Plane.On_Ground loop
      --  do some action to ground the plane
      null;
   end loop;

   My_Plane.Open_Doors;
end Landing_Procedure;
