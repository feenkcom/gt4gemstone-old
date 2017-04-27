scripting
gtGsForGemstoneWith: aBlock
	"I execute the given block with the receiver as a parameter only on the GemStone side. 
	In the case of a Glamour presentation from the Pharo, side the correponding method  
	with the same name will not execute the block. In tandem with #gtGsForPharoWith: I
	proide a way to initialize the presentation on the Pharo side."
	
	aBlock value: self