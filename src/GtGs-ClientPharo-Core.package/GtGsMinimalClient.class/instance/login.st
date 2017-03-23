login/logout
login

	self sessionDescription ifNil: [ 
		self inform: 'No session description set. Cannot login'.
		^ self ].
	self loginWith: self sessionDescription 