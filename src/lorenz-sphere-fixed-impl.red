% Automatic Generation of Bounds for Polynomial Systems with Application to the Lorenz System
% REDUCE source file
% Spherical bounds with fixed center
% Formulation with implication
load_package "redlog";
% Select algebraic context: Real field
rlset r;
% Advanced elimination method (virtual substitution)
on ofsfvs;
% Standard parameter values, commented out
% s:=10;
% r:=28;
% b:=8/3;
% Lorenz equations
f1:=s*(x2-x1);
f2:=r*x1-x2-x1*x3;
f3:=x1*x2-b*x3;
% Lyapunov candidate function
V:=(x3-(r+s))^2+x2^2+x1^2;
% Partial derivatives of Lyapunov function
dV1:=df(V,x1);
dV2:=df(V,x2);
dV3:=df(V,x3);
% Derivative along systems dynamics
dV:=f1*dV1 + f2*dV2 + f3*dV3;
% Expression with quantifiers (prenex formula)
phi:=all({x1,x2,x3},
  s>0 and r>0 and s>0 and c>0 and (V>c^2 impl dV<0));
% Quantifier elimination (QE)
psi:=rlqe(phi);
% File output
off nat$ 
out "lorenz.out"$
write psi;
shut "lorenz.out"$
on nat;
