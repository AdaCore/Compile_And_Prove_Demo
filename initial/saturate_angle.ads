with Saturate;

--  Fix syntax of float literals to compile: 0.0 and 360.0
--  Fix order of parameters to prove: low is 0.0, high is 360.0

function Saturate_Angle is new Saturate (High => 0, Low => 360);
