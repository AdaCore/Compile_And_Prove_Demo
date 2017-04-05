with Interfaces; use Interfaces;

--  Fix the syntax errors to compile

procedure Bitwise_Swap (X, Y : in out Unsigned_32) with
  Post => X = Y'Old and Y = X'Old
is
   X := X xor Y;
   Y := X xor Y
--  Uncomment the following line to prove
-- X := X xor Y;
end Bitwise_Swap;
