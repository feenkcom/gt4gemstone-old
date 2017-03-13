as yet unclassified
inspectorPresentationsIn: aComposite
	^ (super inspectorPresentationsIn: aComposite), { 
		self gtGsInspectorInstanceMethodsIn: aComposite. 
		self gtGsInspectorSuperclassesIn: aComposite }