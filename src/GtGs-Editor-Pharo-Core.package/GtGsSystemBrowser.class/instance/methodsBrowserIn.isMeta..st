building
methodsBrowserIn: aMainComposite isMeta: isClassSide
	| browser |
	
	browser := aMainComposite tabulator.
	browser title: (isClassSide ifTrue: ['Class'] ifFalse: ['Instance']).
		
	browser 
		column: #categories;
		column: #methods.
				
	browser transmit 
		to: #categories;
		andShow: [ :aComposite | 
			aComposite list display: [ #() ] ].
	browser transmit 
		to: #methods;
		andShow: [ :aComposite | 
			aComposite list display: [ #() ]  ].
				
	browser transmit 
		fromOutsidePort: #seletedClass;
		to: #categories;
		andShowDynamic: [ :aComposite :aClassName |
			(self browserModel categoriesViewForClass: aClassName isMeta: isClassSide) 
				gtGsAsGlamourPresentationOn: aComposite ].
	browser transmit 
		fromOutsidePort: #seletedClass;
		to: #methods;
		andShow: [ :aComposite | 
			aComposite list display: [ #() ]  ].
	browser transmit 
		from: #categories;
		to: #methods;
		andShowDynamic: [ :aComposite :aCategoryName | 
			(self browserModel methodsViewForCategory: aCategoryName isMeta: isClassSide) 
				gtGsAsGlamourPresentationOn: aComposite ].
			
	browser transmit
		from: #categories port: #selection;
		toOutsidePort: #category.
	browser transmit
		from: #methods;
		toOutsidePort: ((isClassSide ifTrue: [#class] ifFalse: [#instance])) 