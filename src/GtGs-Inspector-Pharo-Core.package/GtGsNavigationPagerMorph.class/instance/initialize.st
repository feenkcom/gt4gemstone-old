initialization
initialize
	super initialize.
	self hResizing: #spaceFill;
		 vResizing: #spaceFill;
		 changeTableLayout; 
		 listDirection: #leftToRight;
		 cellInset: 2 @ 0;
		 layoutInset: 3 @ 0;
		 listCentering: #center;
		 clipSubmorphs: true;
		 borderWidth: 0;
		 color: self pagerColor;
		 borderColor: Color lightGray