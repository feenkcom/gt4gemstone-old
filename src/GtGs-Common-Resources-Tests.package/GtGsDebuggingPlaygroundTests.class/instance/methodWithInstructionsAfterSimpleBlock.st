as yet unclassified
methodWithInstructionsAfterSimpleBlock
	| value |
	1 to: 2 do: [ : i | i + 1 ].
	value := [ 1 + 1 + 39 ] value.
   ^ value + 1.