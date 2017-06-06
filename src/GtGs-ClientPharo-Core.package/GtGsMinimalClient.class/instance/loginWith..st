login/logout
loginWith: aSessionDescription
	self startTime: DateAndTime now.
	super loginWith: aSessionDescription.
	self postLoginInitialization