ui building
buildPanel
	| widgets |
	self removeAllMorphs.
	dataSource displaysAllElements ifTrue: [^ self ].
	
	widgets := OrderedCollection new.
	widgets
		addAll: self buildGoBackwardButtons;
		add: (self spacer: 5);
		add: (LabelMorph contents: ' ',self startIndexValue asString,' ' font: self preferedFont);
		add: (LabelMorph contents: ' - ' font: self preferedFont);
		add: (LabelMorph contents: ' ',self stopIndexValue asString,' ' font: self preferedFont);
		add: (LabelMorph contents: ' / ' font: self preferedFont);
		add: (LabelMorph contents: (' ' , dataSource totalNumberOfRows asString , ' ') font: self preferedFont);
		add: (self spacer: 5);
		addAll: self buildGoForwardButtons;
		add: (self spacer: 20);
		add: (LabelMorph contents: ' jump to: ' font: self preferedFont);
		add: self jumpToElementEditor.
	
	self addAllMorphs: widgets.
