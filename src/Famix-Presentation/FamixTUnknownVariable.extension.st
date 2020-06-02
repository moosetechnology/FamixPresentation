Extension { #name : #FamixTUnknownVariable }

{ #category : #'*Famix-Presentation' }
FamixTUnknownVariable classSide >> color [
	^ MDLColor tint: #blue_grey code: #'300'
]

{ #category : #'*Famix-Presentation' }
FamixTUnknownVariable classSide >> kindAbbreviation [
	^ 'UV'
]

{ #category : #'*Famix-Presentation' }
FamixTUnknownVariable classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Unknown Variable'
		with: #french -> 'Variable Inconnue'
]
