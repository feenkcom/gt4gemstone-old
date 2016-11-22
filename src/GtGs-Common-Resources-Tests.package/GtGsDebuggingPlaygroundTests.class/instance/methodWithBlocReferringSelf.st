as yet unclassified
methodWithBlocReferringSelf
	| temp  |
	temp := 1.
	^ [self methodWithSimpleBlock + temp ] value