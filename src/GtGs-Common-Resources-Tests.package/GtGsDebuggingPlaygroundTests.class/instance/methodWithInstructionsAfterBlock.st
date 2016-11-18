as yet unclassified
methodWithInstructionsAfterBlock
	| temp |
	temp := 0.
	1 to: 2 do: [ : i | temp := i + temp ].
   ^ 39 + temp.