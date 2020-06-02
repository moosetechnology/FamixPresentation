Extension { #name : #FamixTClass }

{ #category : #'*Famix-Presentation' }
FamixTClass classSide >> kindAbbreviation [
	^ 'C'
]

{ #category : #'*Famix-Presentation' }
FamixTClass classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Class'
		with: #french -> 'Classe'
]
