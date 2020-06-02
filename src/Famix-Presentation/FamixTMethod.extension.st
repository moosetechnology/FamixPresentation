Extension { #name : #FamixTMethod }

{ #category : #'*Famix-Presentation' }
FamixTMethod classSide >> color [
	^ MDLColor tint: #light_green
]

{ #category : #'*Famix-Presentation' }
FamixTMethod classSide >> kindAbbreviation [
	^ 'M'
]

{ #category : #'*Famix-Presentation' }
FamixTMethod classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Method'
		with: #french -> 'Méthode'
]
