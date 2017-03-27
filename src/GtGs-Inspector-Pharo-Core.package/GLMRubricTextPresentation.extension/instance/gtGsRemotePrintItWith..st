*GtGs-Inspector-Pharo-Core
gtGsRemotePrintItWith: aGsCodeExecutor
	
	self announce: (GLMTextEditorRequest new 
		action: [ :anEditor | 
			self highlightAndDo: 	[ :aText |	
				GtGsPrintPopper
					installAlarm: #value
					for: [
						GtGsPrintPopper new 
							openFromRubric: anEditor textArea 
							withResult: (aGsCodeExecutor 
								evaluateStringRemotely: '[', aText, '] value gtGsInspectorName')  ] ] ])