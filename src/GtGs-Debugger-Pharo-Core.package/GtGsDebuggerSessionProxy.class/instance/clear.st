actions
clear
	"This method is called from a resume action. In the case of the Gemstone debugger 
	the resume action also clears the session, if required."

   "----OLD VERSION---"
	"If after resuming the process the user does plan to reuse this session with
	the same process, it should call this method."
	
	"The Resume debugging action from Pharo will call first #resume and then #clear. 
	If there is an error while resumming the process the Gesstone debugger will spawn a new debugger.
	In this case the session should not be cleared when the initial debugger is closed."
	"(ignoreNextClear isNotNil and: [ignoreNextClear]) 
		ifTrue: [ ignoreNextClear := false. ^ self ].
	self clientSession clear."
		