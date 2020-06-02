Extension { #name : #FamixTEnumValue }

{ #category : #'*Famix-Presentation' }
FamixTEnumValue classSide >> color [
	^ MDLColor tint: #green code: #'200'
]

{ #category : #'*Famix-Presentation' }
FamixTEnumValue classSide >> kindAbbreviation [
	^ 'EV'
]

{ #category : #'*Famix-Presentation' }
FamixTEnumValue classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Enum value'
		with: #french -> 'Valeur énumérée'
]
