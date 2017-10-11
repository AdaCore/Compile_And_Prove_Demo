package Avionics is

   type Plane is interface;

   function On_Ground (P : Plane) return Boolean is abstract;
   function Doors_Opened (P : Plane) return Boolean is abstract;
   function Speed (P : Plane) return Float is abstract;

   procedure Open_Doors (Self : Plane) is abstract with
     Pre'Class  => Self.On_Ground,
     Post'Class => Self.Doors_Opened;

   type Jet is new Plane with null record;

   function On_Ground (J : Jet) return Boolean;
   function Doors_Opened (J : Jet) return Boolean;
   function Speed (J : Jet) return Float;
   function Pressurization (J : Jet) return Boolean;

   procedure Open_Doors (Self : Jet) with
     --  Comment out the following line to prove
     Pre'Class  => Self.On_Ground and Self.Speed = 0.0,
     Post'Class => Self.Doors_Opened and not Self.Pressurization;

end Avionics;
