with Interfaces; use Interfaces;

procedure Bitwise_Swap (X, Y : in out Unsigned_32) with
  Post => X = Y'Old and Y = X'Old
is
begin
   X := X xor Y;
   Y := X xor Y;
   X := X xor Y;
end Bitwise_Swap;
