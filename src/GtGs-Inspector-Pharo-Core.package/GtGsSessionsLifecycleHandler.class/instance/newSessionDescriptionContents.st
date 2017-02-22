private
newSessionDescriptionContents
	| editorWindow |
	
	editorWindow := (TextEditorDialogWindow newWithTheme: Smalltalk ui theme)
		text: self sessionDescriptionCreationHelpText ;
		title: 'Create session description' ;
		entryText: (String streamContents: [ :stream | 
   		   STON writer
   		     on: stream;
			  prettyPrint: true;
   		     nextPut: (TDSessionDescription new
					name: '<TODO>';
					stoneHost: '<TODO>';
    				stoneName: '<TODO>';
    				gemHost: '<TODO>';
					netLDI: '<TODO>';
   					netLDIPort: '<TODO>';
					gemTask: 'gemnetobject';
					userId: 'DataCurator';
					password: 'swordfish';
					gemstoneVersion: '3.3.3') ]);
		entryHeight: 400.
	"By default the text is centered."
	editorWindow textMorph text addAttribute: TextAlignment leftFlush.
	^ (World openModal: editorWindow) entryText.