package Strings is

   subtype Str is String
     with Predicate => Str'First = 1 and Str'Last < 10_000;

   function Longest_Common_Prefix (X, Y : Str) return Natural with
     Post => (for all J in 1 .. Longest_Common_Prefix'Result => X(J) = Y(J));

end Strings;
