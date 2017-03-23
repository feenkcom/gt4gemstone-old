*GtGs-Inspector-Pharo-Core
gtGsLocalExecutionSelectionActions

	^ { 
		(GLMGenericAction new) 
				title: 'Do it (local)';
				action: [ :aPresentation |
					aPresentation highlightEvaluateAndDo: [ :result | ] ]; 
				icon: GLMUIThemeExtraIcons glamorousSpawn;
				withSeparatorBefore;
				yourself.
		(GLMGenericAction new) 
				title: 'Print it (local)';
				action: [ :aPresentation |
					aPresentation printSelection ]; 
				yourself.
		(GLMGenericAction new) 
				title: 'Inspect it (local)'; 
				action: [ :aPresentation |
					aPresentation highlightEvaluateAndDo: [ :result | result inspect ] ]; 
				icon: GLMUIThemeExtraIcons glamorousInspect;
				yourself.
		(GLMGenericAction new) 
				title: 'Basic Inspect it (local)'; 
				action: [ :aPresentation |
					aPresentation highlightEvaluateAndDo: [ :result | result basicInspect ] ]; 
				icon: GLMUIThemeExtraIcons glamorousInspect;
				yourself.
		(GLMGenericAction new) 
				title: 'Debug it (local)'; 
				action: [ :aPresentation |
					aPresentation debugSelection ]; 
				yourself.
		(GLMGenericAction new) 
				title: 'Profile it (local)'; 
				action: [ :aPresentation |
					aPresentation profileSelection ]; 
				withSeparatorAfter;
				yourself.
		 }