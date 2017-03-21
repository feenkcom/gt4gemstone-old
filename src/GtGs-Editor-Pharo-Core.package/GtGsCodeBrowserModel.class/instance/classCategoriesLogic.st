remote - logic
classCategoriesLogic

	^ [ ClassOrganizer gtGsCachedOrganizer categories keys sortWithBlock: [ :a :b | a < b ] ]