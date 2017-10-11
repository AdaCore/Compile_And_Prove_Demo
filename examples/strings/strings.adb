package body Strings is

   function Longest_Common_Prefix (X, Y : Str) return Natural is
      Length     : Natural := 0;
      Max_Length : constant Natural := Natural'Min(X'Length, Y'Length);
   begin
      --  Change to strict inequality below to prove
      while Length <= Max_Length loop
         pragma Loop_Invariant (for all J in 1 .. Length => X(J) = Y(J));
         exit when X (Length + 1) /= Y (Length + 1);
         Length := Length + 1;
      end loop;

      return Length;
   end Longest_Common_Prefix;

end Strings;
