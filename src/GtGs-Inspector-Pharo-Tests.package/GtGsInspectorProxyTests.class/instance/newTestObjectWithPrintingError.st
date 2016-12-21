accessing
newTestObjectWithPrintingError

	^ 'GtGsTestObjectWithPrintError new
		x: (GtGsTestObjectWithPrintError new
			x: 4;
			y: 2);
		y: (GtGsTestObjectWithPrintError new 
				disablePrintingError;
				x: GtGsTestObjectWithPrintError new;
				y: 42)'