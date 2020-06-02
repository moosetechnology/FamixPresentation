Extension { #name : #FamixTLocalVariable }

{ #category : #'*Famix-Presentation' }
FamixTLocalVariable classSide >> color [
	^ MDLColor tint: #indigo code: #'700'
]

{ #category : #'*Famix-Presentation' }
FamixTLocalVariable classSide >> kindAbbreviation [
	^ 'LV'
]

{ #category : #'*Famix-Presentation' }
FamixTLocalVariable classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Local Variable'
		with: #french -> 'Variable Locale'
]
