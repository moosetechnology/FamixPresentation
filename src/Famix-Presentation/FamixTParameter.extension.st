Extension { #name : #FamixTParameter }

{ #category : #'*Famix-Presentation' }
FamixTParameter classSide >> color [
	^ MDLColor tint: #indigo code: #'900'
]

{ #category : #'*Famix-Presentation' }
FamixTParameter classSide >> kindAbbreviation [
	^ 'Pm'
]

{ #category : #'*Famix-Presentation' }
FamixTParameter classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Parameter'
		with: #french -> 'Paramètre'
]
