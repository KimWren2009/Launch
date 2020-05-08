Variable Scope (18- 19)

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
