initialization
addToLocalStorage
	"Add the current proxy into the SessionTemps to prevent its garbage collection. "
	self temporarySessionStorage at: self asOop put: self.