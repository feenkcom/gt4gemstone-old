config
addToLocalStorage
	"Add the current proxy into the SessionTemps to prevent its garbage collection.
	I should only be used if this presentation needs to be used by itself and not as
	part of a browser that already keeps a reference to it."
	self temporarySessionStorage at: self asOop put: self.