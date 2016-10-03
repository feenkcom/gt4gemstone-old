*test_gsinspector-Pharo-Core
asGlamourPresentationOn: aComposite 

	^ GLMListPresentation new 
		title: [ 
			self gemstoneClient session
				send: #value
				to: self titleBlockOopType ];
		display: [ 
			self gemstoneClient objectSerializer fromString: 
				(self gemstoneClient session
					send: #value
					to: self displayBlockOopType) ]";
		format: [ :anIntem | ]"