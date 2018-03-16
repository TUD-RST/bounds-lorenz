# Automatic Generation of Bounds for the Lorenz System Using Quantifier Elimination

This project contains the REDUCE source files for the computation of bounds using quantifier elimination with application to the chaotic Lorenz system. The project allows the verification of the results presented in the follwing paper:

Klaus Röbenack, Rick Voßwinkel, Hendrik Richter: *Automatic Generation of Bounds for Polynomial Systems with Application to the Lorenz System*. https://arxiv.org/abs/1712.08228v1

## Prerequisites

You need to install the computer algebra system REDUCE. The REDUCE distribution is available for several operating systems:

http://reduce-algebra.sourceforge.net/

There are two main versions of REDUCE available, which are based on different Lips libraries:

Connand | Library version 
:--- | :--- 
`redcsl`   | Codemist Standard Lisp (CSL) 
`redpsl`   | Portable Standard Lisp (PSL) 

## Contents

The [src](src) directory contains the source REDUCE files listed in the next table. These files differ in the geometry of the bounds and the problem formulation.

File | Description
:--- | :---
`lorenz-sphere-fixed-impl.red` | Spherical bounds with fixed center, problem formulation with implication
`lorenz-sphere-fixed-ineq.red` | Spherical bounds with fixed center, problem formulation with differential inequality

## Licence

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details.
