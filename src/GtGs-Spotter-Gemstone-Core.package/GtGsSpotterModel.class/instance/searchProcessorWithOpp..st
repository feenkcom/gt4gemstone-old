callbacks
searchProcessorWithOpp: anOop

	^ spotterStep processors detect: [ :aStep | aStep asOop = anOop ]