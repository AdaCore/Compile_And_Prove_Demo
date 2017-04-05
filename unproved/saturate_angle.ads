with Saturate;

--  Fix order of parameters to prove: low is 0.0, high is 360.0

function Saturate_Angle is new Saturate (High => 0.0, Low => 360.0);
