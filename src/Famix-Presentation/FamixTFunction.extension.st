Extension { #name : #FamixTFunction }

{ #category : #'*Famix-Presentation' }
FamixTFunction classSide >> color [
	^ MDLColor tint: #purple
]

{ #category : #'*Famix-Presentation' }
FamixTFunction classSide >> kindAbbreviation [
	^ 'F'
]

{ #category : #'*Famix-Presentation' }
FamixTFunction classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Function'
		with: #french -> 'Fonction'
]
