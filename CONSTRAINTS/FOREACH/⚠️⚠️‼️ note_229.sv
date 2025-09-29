Loops inside constraints

In SystemVerilog, constraint blocks are declarative, not procedural. That means:

You cannot use procedural loops like for, while, do-while, forever, or repeat directly inside a constraint.

These are procedural statements, meant for always, initial, or function/task blocks.

If you try, the compiler will give syntax errors.
