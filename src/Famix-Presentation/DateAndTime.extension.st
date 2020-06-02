Extension { #name : #DateAndTime }

{ #category : #'*Famix-Presentation' }
DateAndTime >> asReadableFormat [
	"Return the date as a readable format."
	
	"(DateAndTime year: 2020 month: 5 day: 25 hour: 12 minute: 55 second: 30) asReadableFormat >>> 'Mon, 25 May 2020 12:55:30'"

	| timeString |
	timeString := (self asTime print24 first: 8).
	^ '{1}, {2} {3} {4} {5}' format: { 
			self dayOfWeekAbbreviation.
			self dayOfMonth asString.
			self monthAbbreviation.
			self year asString.
			timeString}.
]
