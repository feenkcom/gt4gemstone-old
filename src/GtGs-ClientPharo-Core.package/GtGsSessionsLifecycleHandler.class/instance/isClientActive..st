testing
isClientActive: aGemstoneClient

	^ aGemstoneClient notNil and: [ aGemstoneClient isActive ]