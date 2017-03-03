building presentations
codeIn: aComposite for: methodNode
  | gsCodePresentation |

	gsCodePresentation := (gemstoneBrowser remoteCodePresentationFor: methodNode) 
		asGlamourPresentationOn: aComposite;
		yourself.
	
	"Add a the do it and go action"
	gsCodePresentation glamourPresentation selectionActions addFirst: (
		GLMGenericAction new
			title: 'Do it and go (remote)';
			action: [ :aPresentation |
				aPresentation highlightAndDo: [ :aText |
					(aPresentation pane port: #evaluatedObject) value: (gsCodePresentation buildRemoteInspectorProxyFrom: aText) ] ];  
			shortcut: $g; 
			withSeparatorBefore;
			yourself).