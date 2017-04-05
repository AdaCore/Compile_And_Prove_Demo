generic
   Low, High : Float;
function Saturate (Val : Float) return Float with
  Post => Saturate'Result in Low .. High;
