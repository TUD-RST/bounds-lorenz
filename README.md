# Generation of Bounds for the Lorenz System Using Quantifier Elimination

This project contains the REDUCE source files for the computation of bounds using quantifier elimination with application to the chaotic Lorenz system. The project allows the verification of the results presented in the follwing paper:

Klaus Röbenack, Rick Voßwinkel, Hendrik Richter: *Automatic Generation of Bounds for Polynomial Systems with Application to the Lorenz System*. https://arxiv.org/abs/1712.08228

## Prerequisites

You need to install the computer algebra system REDUCE. The REDUCE distribution is available for several operating systems:

http://reduce-algebra.sourceforge.net/

There are two main versions of REDUCE available, which are based on different Lips libraries:

Command | Library version 
:--- | :--- 
`redcsl`   | Codemist Standard Lisp (CSL) 
`redpsl`   | Portable Standard Lisp (PSL) 

The quantifier elimination is carried out using the package REDLOG. The program code is already part of REDUCE. The documentation can be found on the REDLOG website:

http://www.redlog.eu/

The quatifier elimination process often results in comparatively large expressions. These expressions can be simplified using the tool SLFQ (Simplifying Large Formulas with QEPCAD B):

https://www.usna.edu/CS/qepcadweb/SLFQ/Home.html

## Contents

The [src](src) directory contains the source REDUCE files listed in the next table. These files differ in the geometry of the bounds and the problem formulation.

File | Description
:--- | :---
`lorenz-sphere-fix-impl.red` | Spherical bounds with fixed center, problem formulation with implication
`lorenz-sphere-fix-ineq.red` | Spherical bounds with fixed center, problem formulation with differential inequality
`lorenz-sphere-var-gen.red` | Spherical bounds with variable center, generic paramters
`lorenz-sphere-var-fix.red` | Spherical bounds with variable center, fixed paramters
`lorenz-ellipse-fix.red` | Elliptical bounds with fixed coordinates and fixed center, generic parameters
`lorenz-ellipse-var.red` | Elliptical bounds with fixed coordinates and variable center, fixed parameters

The evaluation of these REDUCE source files yields large expression which are stored in the ASCII file `lorenz.out`. The expressions can be simplified with the tool SLFQ. The results of these simplications are stored in the file [Simplification.md](doc/Simplification.md) of the [doc](doc) directory.

## Licence

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.
