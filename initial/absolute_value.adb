function Absolute_Value (X : Integer) return Integer
with
--  Uncomment the following line to prove
--  Pre  => X /= Integer'First,
    Post => Absolute_Value'Result = abs (X)
is
begin
   if X > 0 then
      return X;
--  Uncoment the following lines to compile
-- else
--    return -X;
   end if;
end Absolute_Value;
