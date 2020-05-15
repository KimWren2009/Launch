Variable Scope (18-19)

I. local variable scope
	A. within method definiton (def keyword)
		i. method definition cannot access local variables in
			another scope (inner or outer)
		ii. can access objects passed in
	B. within method invocation with a block (calling a method)
		i. create a new scope for local variables (inner scope)
		ii. variables initialized in an outer scope can be accessed by
			the inner scope
			- outer scope variables can be reassigned by inner
				 scope block
		iii. variable intiated in the inner scope cannot be accessed
			 by the outer scope
		iv. variable shadowing: inner scope parameter named the same
			as an out scope variable
			- outer scope variable will be ignored
			- aviod shadowing 

II. Blocks: act as an argument to a method 
	Method definition sets a scope for local variables in terms 
		of parameters and interaction with blocks
	Method invocation uses the scope set by the method definition

Pass by Reference vs. Pass by Value (20)

	I. In Ruby, variables do not hold value.
		a. Rather, they are references (pointers) to objects (boxes of data) that hold value.

	II. Some objects are immutable: it is not possible to modifiy the value held in the object. 
		a. (The box cannot be opened to change its contents. It's label [object id] always remains the same.)
	III. Some objects are mutable: it is possible to modify the value held in the object. 
		b. (The box can be opened and its contents changed while the box's label [object id] remains the same)

	IV. Pass by value: makes a copy of the object referenced by the variable

	V. Pass by reference: uses the object referenced by the variable

METHOD: 

	= as variable assingment acts like a non-mutating method (creates new objects)
	=+ as assignment operator is non-mutating (creates new objects)
	<< concatenation is mutating (changes the original object)
	=[] is mutating (changes the original String, Array, Hash, etc.)

PASS BY VALUE OF THE REFERENCE
