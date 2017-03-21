remote - logic
classesForCategoryLogic
	
	^ [ :currentCategoryName | 
			(ClassOrganizer gtGsCachedOrganizer categories at: currentCategoryName)
						sortWithBlock: [ :a :b | a name < b name ] ]
	
	