browser := GLMTabulator new.
	browser
		column: #one;
		column: #two.
	browser
		transmit to: #one;
		andShow: [ :canvas | 
			 canvas list
				format: #fullName;
				icon: #icon ].
	browser
		transmit to: #two;
		from: #one port: #selection;
		andShow: [ :canvas | 
			canvas morph
				display: #previewMorph ].
	^ browser openOn: self