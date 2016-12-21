initialization
specificTableMorphInitializiation
	| presentation |
	super specificTableMorphInitializiation.
	presentation := tableModel glamourPresentation.
	"If needed I extant the tree"
	presentation shouldAllExpand
		ifTrue: [ tableModel expandAll ].
	presentation shouldRootsExpand
		ifTrue: [ tableModel expandRoots ].
	presentation shouldExpandToLevel
		ifTrue: [ tableModel expandAllTo: presentation expandLevel ].
		
	presentation columns ifNotEmpty: [  
		tableMorph beResizable.
		tableMorph
			columns:
				(presentation columns
					collect:
						[ :each | 
						GLMFastTableColumn new
							id: (presentation titleValueOfColumn: each);
							width: each width;
							glamourColumn: each;
							"target: tableModel actionSelector: #sortByColumn: arguments: {each};"
							yourself ]).
		presentation shouldShowHeader 
			ifFalse: [ tableMorph hideColumnHeaders ]
			ifTrue: [ tableMorph showColumnHeaders ] ]