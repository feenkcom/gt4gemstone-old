callbacks
actOnBrowserClosing: ann
	| currentSession |
	isClosing := true.
	"For some reason instances of the debugger window do not get garbage collected 
	when the window is closed. This means that they stay around and when #logout
	is called on the client, the client attempts to close again the debugger windows.
	This will call again #terminate in the session blocking the UI process (if the code
	was executed from the UI process). To avoid this remove the session explicitly, and
	the call #terminate on the session."
	currentSession := self session.
	self removeSessionSilently.
	currentSession ifNotNil: [ :aSession | aSession terminate ]
	