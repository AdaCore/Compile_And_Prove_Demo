function Saturate (Val : Float) return Float is
begin
   if Val in Low .. High then
      return Val;
   elsif Val < Low then
     return Low;
   else
      return High;
   end if;
end Saturate;
