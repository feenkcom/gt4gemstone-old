*GtGs-Editor-Core
gtGsCachedOrganizer
  | sessionTemps organizer |
  sessionTemps := SessionTemps current.
  organizer := sessionTemps at: #'GtGs_Cached_Class_Organizer' ifAbsent: [ nil ].
  organizer == nil
    ifTrue: [ organizer := ClassOrganizer new.
      sessionTemps at: #'GtGs_Cached_Class_Organizer' put: organizer ].
  ^ organizer