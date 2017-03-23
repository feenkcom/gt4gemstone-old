accessing
isActive

	^ self session notNil and: [ self session isSessionValid ]