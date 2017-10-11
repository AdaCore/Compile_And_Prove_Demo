with System.Storage_Elements;

package body Sensor_Average is

   T_Front : Temperature
     with Volatile, Address => System.Storage_Elements.To_Address (16#FFFF_EEEE#);
   T_Rear : Temperature
     with Volatile, Address => System.Storage_Elements.To_Address (16#FFFF_EEEF#);

   procedure Get_Temperature (Temp : out Temperature) is

      function Average (T1, T2 : Temperature) return Temperature
        with Post => Average'Result in Temperature'Min(T1, T2) .. Temperature'Max(T1, T2)
      is
      begin
         --  Fix expression below to prove the postcondition
         return T1 + T2 / 2;
      end Average;

      T1 : constant Temperature := T_Front;
      T2 : constant Temperature := T_Rear;
   begin
      --  Fix call below to compile without warnings
      Temp := Average (T1, T2);
   end Get_Temperature;

end Sensor_Average;
