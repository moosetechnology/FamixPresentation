Extension { #name : #FamixTEnum }

{ #category : #'*Famix-Presentation' }
FamixTEnum classSide >> color [
	^ MDLColor green
]

{ #category : #'*Famix-Presentation' }
FamixTEnum classSide >> kindAbbreviation [
	^ 'E'
]

{ #category : #'*Famix-Presentation' }
FamixTEnum classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Enum'
		with: #french -> 'Enum'
]
