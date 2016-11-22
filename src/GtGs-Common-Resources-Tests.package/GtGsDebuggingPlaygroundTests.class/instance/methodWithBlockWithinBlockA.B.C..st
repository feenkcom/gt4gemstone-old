as yet unclassified
methodWithBlockWithinBlockA: a B: b C: c
	| temp1 temp2 temp3 |
	temp1 := a.
	temp2 := c.
	temp3 := 1.
	^ [ 
			a + 
			[ 2 + 3 ] value + 
			([:t | t + b + temp3] value: 2) 
	] value