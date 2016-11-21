*GtGs-Debugger-Pharo-Core
gtConstructDebuggerInspectorIn: composite for: aDebugger
	
	^composite custom: ((GTDebuggerInspector new  
		debugger: aDebugger;
		notifyPaneRemoved: true;
		showFirst: [ :a | a custom: (GtGsDebuggerVariablesBrowser new 
			debugger: aDebugger;
			title: 'Variables';
			startOn: self)];
		yourself) 
			startOn: self)