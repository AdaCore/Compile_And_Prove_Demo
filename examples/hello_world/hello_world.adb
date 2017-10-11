with Ada.Command_Line;
with Ada.Text_IO;

procedure Hello_World is
   You : constant String :=
--  Change to strict inequality below to prove
     (if Ada.Command_Line.Argument_Count >= 0 then
        Ada.Command_Line.Argument (1)
      else "世界");
begin
   Ada.Text_IO.Put ("Hello, ");
   Ada.Text_IO.Put_Line (You);
end Hello_World;
