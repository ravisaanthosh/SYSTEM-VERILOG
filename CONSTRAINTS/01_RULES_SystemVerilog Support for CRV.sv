SystemVerilog Support for CRV
Constraint-driven test generation allows you to automatically (well almost) gener-
ate tests for functional verification. SystemVerilog offers a rich set of features
toward the constrained random verification methodology. We will discuss each of
these features in the coming sections. But at the high level, the following are some
of the features that are supported:
• Constraints: Allows you to specify interesting subset of all possible stimuli with
constraint blocks. Purely random stimulus may not allow you to focus on specific
set of verification criteria. The constraint blocks allow for constraining random-
ness. The following features support constraints:
–– Constraints can be any SystemVerilog expression with variables and con-
stants of integral type (e.g., bit, reg, logic, integer, enum, and packed struct).
–– The constraint solver will be able to handle a wide spectrum of equations,
such as algebraic factoring, complex Boolean expressions, and mixed integer
and bit expressions. We will see more examples on this.
–– “foreach” for constraining elements of an array.
–– Inline constraints.
–– Guarded constraints.
–– Conditional (if-else) and implication (->) constraints.
–– Rand case and rand sequence.
• Randomization: The following features support randomization:
–– System functions for randomization
–– Constrained and unconstrained randomization
–– Uniform and weighted distribution
–– Pre- and post-randomization
–– Random variables
• Dynamic constraints:
–– Disabling/enabling constraints
–– Disabling/enabling random variables
–– Overriding constraint blocks
• Random stability:
–– Thread stability
–– Object stability13.4 Constraints
