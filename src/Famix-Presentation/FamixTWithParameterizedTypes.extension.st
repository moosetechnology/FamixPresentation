Extension { #name : #FamixTWithParameterizedTypes }

{ #category : #'*Famix-Presentation' }
FamixTWithParameterizedTypes classSide >> color [
	^ MDLColor tint: #green
]

{ #category : #'*Famix-Presentation' }
FamixTWithParameterizedTypes classSide >> kindAbbreviation [
	^ 'PC'
]

{ #category : #'*Famix-Presentation' }
FamixTWithParameterizedTypes classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Parameterizable Class'
		with: #french -> 'Classe paramétrée'
]
