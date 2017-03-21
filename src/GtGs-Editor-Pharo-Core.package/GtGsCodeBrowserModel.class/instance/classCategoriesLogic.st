remote - logic
classCategoriesLogic

	^ [ ClassOrganizer cachedOrganizer categories keys sortWithBlock: [ :a :b | a < b ] ]