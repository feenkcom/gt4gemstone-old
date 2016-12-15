ui building
buildPanel
	| widgets |
	self removeAllMorphs.
	widgets := OrderedCollection new.
	
	widgets
		addAll: self buildGoBackwardButtons;
		add: (self spacer: 10);
		add: self startIndexEditor;
		add: (LabelMorph contents: ' - ' font: self preferedFont);
		add: self endIndexEditor;
		add: (LabelMorph contents: ' / ' font: self preferedFont);
		add: (LabelMorph contents: ' 10000 ' font: self preferedFont);
		add: (self spacer: 10);
		addAll: self buildGoForwardButtons.
	
	self addAllMorphs: widgets.
