What does this code print?
5.step(to: 10, by: 3) { |value| puts value }

5
8

Finding the documentation for #step can be a bit difficult since there are different types of number classes in ruby. The following classes are worth searching through:

Integer
Float
Numeric
Math

Integer and Float inherit from Numeric. Numeric is basically the superclass of all numeric types, while Math is a module that supplies a lot of number crunching functionality. Choosing the right documentation to look at is difficult, so, for now, be aware that you may have to look in all these locations.