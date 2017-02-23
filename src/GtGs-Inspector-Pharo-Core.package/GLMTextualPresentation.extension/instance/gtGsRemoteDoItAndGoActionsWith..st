*GtGs-Inspector-Pharo-Core
gtGsRemoteDoItAndGoActionsWith: aGsCodeExecutor
	^ GLMGenericAction new
			title: 'Do it and go (remote)';
			action: [ :aPresentation |
				aPresentation highlightAndDo: [ :aText |
					aPresentation selection: (aGsCodeExecutor buildRemoteInspectorProxyFrom: aText) ] ];  
			shortcut: $g; 
			withSeparatorBefore;
			yourself.