executing
executeOn: aGemstoneClient

	^ aGemstoneClient executeString: (actionBlock gtGsAsExecutableStringWithArguments: arguments)