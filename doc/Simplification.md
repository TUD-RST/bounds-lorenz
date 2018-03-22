# Generation of Bounds for the Lorenz System Using Quantifier Elimination

The project allows the verification of the results presented in the follwing paper:

Klaus Röbenack, Rick Voßwinkel, Hendrik Richter: *Automatic Generation of Bounds for Polynomial Systems with Application to the Lorenz System*. https://arxiv.org/abs/1712.08228v1

## Computation

The [src](../src) directory contains the source REDUCE files. We used the Codemist Standard Lisp (CSL) branch of REDUCE under Linux. The program is called as follows:

```
redcsl <sourcefilename.red
```

For an additional measurement of the computation time we use the calling sequence:

```
time redcsl <sourcefilename.red
```

The computation with REDUCE yields the ASCII file ```lorenz.out``` containing quantifier-free expressions. In this file we record the results of the simplifications. We carried out simplifications with the tool SLFQ:

```
slfq lorenz.out
```

This tools calls the program QEPCAD B repeatedly. 

## Simplification Results

### ```lorenz-sphere-fix-impl.red```

The REDUCE output file ```lorenz.out``` has a size of 4.3 KiB. Simplification with SLFQ:

```
-----------------------------------------------------------------------------
6 Garbage collections, 14220796 Cells and 0 Arrays reclaimed, in 169 milliseconds.
2035949 Cells in AVAIL, 2500000 Cells in SPACE.

System time: 4689 milliseconds.
System time after the initialization: 4666 milliseconds.
-----------------------------------------------------------------------------
An equivalent formula is:
[ s > 0 /\ b > 0 /\ r > 0 /\ c - r - s >= 0 /\ [ [ b - 2 < 0 /\ b - 2 s < 0 ] \/ [ b - 2 s < 0 /\ 4 b c^2 - 4 c^2 - b^2 r^2 - 2 s b^2 r - s^2 b^2 >= 0 ] \/ [ 4 b c^2 - 4 c^2 - b^2 r^2 - 2 s b^2 r - s^2 b^2 >= 0 /\ 4 s b c^2 - 4 s^2 c^2 - b^2 r^2 - 2 s b^2 r - s^2 b^2 >= 0 ] \/ [ b - 2 < 0 /\ 4 s b c^2 - 4 s^2 c^2 - b^2 r^2 - 2 s b^2 r - s^2 b^2 >= 0 ] ] ]
There were 130 QEPCADB calls
```

### ```lorenz-sphere-fix-ineq.red```

The REDUCE output file ```lorenz.out``` has a size of 4.6 KiB. Simplification with SLFQ:

```
-----------------------------------------------------------------------------
3 Garbage collections, 7398207 Cells and 3 Arrays reclaimed, in 74 milliseconds.
1239981 Cells in AVAIL, 2500000 Cells in SPACE.

System time: 1443 milliseconds.
System time after the initialization: 1422 milliseconds.
-----------------------------------------------------------------------------
An equivalent formula is:
[ s > 0 /\ b > 0 /\ r > 0 /\ c - r - s >= 0 /\ [ [ b - 2 < 0 /\ b - 2 s < 0 ] \/ [ b - 2 s < 0 /\ 4 b c^2 - 4 c^2 - b^2 r^2 - 2 s b^2 r - s^2 b^2 >= 0 ] \/ [ 4 b c^2 - 4 c^2 - b^2 r^2 - 2 s b^2 r - s^2 b^2 >= 0 /\ 4 s b c^2 - 4 s^2 c^2 - b^2 r^2 - 2 s b^2 r - s^2 b^2 >= 0 ] \/ [ b - 2 < 0 /\ 4 s b c^2 - 4 s^2 c^2 - b^2 r^2 - 2 s b^2 r - s^2 b^2 >= 0 ] ] ]
There were 351 QEPCADB calls!
```

### ```lorenz-sphere-var-gen.red```

The REDUCE output file ```lorenz.out``` has a size of 822 KiB. We were not able to simplify this source code with SLFQ.

### ```lorenz-sphere-var-fix.red```

The REDUCE output file ```lorenz.out``` has a size of 37 KiB.

```
-----------------------------------------------------------------------------
26 Garbage collections, 63943589 Cells and 0 Arrays reclaimed, in 639 milliseconds.
1516612 Cells in AVAIL, 2500000 Cells in SPACE.

System time: 6295 milliseconds.
System time after the initialization: 6269 milliseconds.
-----------------------------------------------------------------------------
An equivalent formula is:
[ x30 > 0 /\ c  >=  _root_-1 81 x30^4 c^4 - 12312 x30^3 c^4 + 702504 x30^2 c^4 - 17833248 x30 c^4 + 169777296 c^4 + 1152 x30^4 c^2 - 87552 x30^3 c^2 + 1828608 x30^2 c^2 + 4096 x30^4 ]
There were 559 QEPCADB calls!
```

### ```lorenz-ellipse-fix.red```

The REDUCE output file ```lorenz.out``` has a size of 3.1 KiB.

```
-----------------------------------------------------------------------------
2 Garbage collections, 4980673 Cells and 0 Arrays reclaimed, in 48 milliseconds.
832476 Cells in AVAIL, 2500000 Cells in SPACE.

System time: 1543 milliseconds.
System time after the initialization: 1523 milliseconds.
-----------------------------------------------------------------------------
An equivalent formula is:
[ s > 0 /\ b > 0 /\ r > 0 /\ c  >=  _root_-1 c^2 - 4 s r^2 /\ [ [ b - 2 < 0 /\ b - 2 s < 0 ] \/ [ b - 2 s < 0 /\ b c^2 - c^2 - s b^2 r^2 >= 0 ] \/ [ b c^2 - c^2 - s b^2 r^2 >= 0 /\ b c^2 - s c^2 - b^2 r^2 >= 0 ] \/ [ b - 2 < 0 /\ b c^2 - s c^2 - b^2 r^2 >= 0 ] ] ]
There were 309 QEPCADB calls!
```

### ```lorenz-ellipse-var.red```

The REDUCE output file ```lorenz.out``` has a size of 40 KiB.

```
-----------------------------------------------------------------------------
30 Garbage collections, 73729751 Cells and 0 Arrays reclaimed, in 740 milliseconds.
1604016 Cells in AVAIL, 2500000 Cells in SPACE.

System time: 7098 milliseconds.
System time after the initialization: 7074 milliseconds.
-----------------------------------------------------------------------------
An equivalent formula is:
[ x30 > 0 /\ c  >=  _root_-1 81 x30^4 c^4 - 18144 x30^3 c^4 + 1526112 x30^2 c^4 - 57125376 x30 c^4 + 801674496 c^4 + 32256 x30^4 c^2 - 3612672 x30^3 c^2 + 114100224 x30^2 c^2 + 3211264 x30^4 ]
There were 534 QEPCADB calls!
```