remote - logic
classesForCategoryLogic
	
	^ [ :currentCategoryName | 
			(ClassOrganizer cachedOrganizer categories at: currentCategoryName)
						sortWithBlock: [ :a :b | a name < b name ] ]
	
	