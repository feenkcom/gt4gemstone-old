accessing
newComposeTestObject

	^ 'GtGsTestObjectBasic 
			newTestInstanceWithX: 42 
			y: (GtGsTestObjectBasic newTestInstanceWithX: 2 
					y: 3 
					z: 4 
					w: 5) 
			z: (GtGsTestObjectBasic newTestInstanceWithX: 6 
					y: 7 
					z: 8 
					w: (GtGsTestObjectBasic newTestInstanceWithX: 9 y: 10 z: 11 w: 12)) 
			w: 45'