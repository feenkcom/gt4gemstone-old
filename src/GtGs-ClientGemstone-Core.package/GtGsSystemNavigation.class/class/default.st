accessing
default
  | sessionTemps systemNavigation |
  sessionTemps := SessionTemps current.
  systemNavigation := sessionTemps at: #'GtGs_Cached_SystemNavigation' ifAbsent: [ nil ].
  systemNavigation == nil
    ifTrue: [ systemNavigation := self new.
      sessionTemps at: #'GtGs_Cached_SystemNavigation' put: systemNavigation ].
  ^ systemNavigation