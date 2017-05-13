pharo - debuggins actions
spawnDebugger: aNewDebugger
	| previousDebugger |

	previousDebugger := self debugger.
	"self debugger: aNewDebugger."
	aNewDebugger openAndInitialize: aNewDebugger.
