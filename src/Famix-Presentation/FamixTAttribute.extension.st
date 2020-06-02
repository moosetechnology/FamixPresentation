Extension { #name : #FamixTAttribute }

{ #category : #'*Famix-Presentation' }
FamixTAttribute classSide >> color [
	^ MDLColor amber
]

{ #category : #'*Famix-Presentation' }
FamixTAttribute classSide >> kindAbbreviation [
	^ 'A'
]

{ #category : #'*Famix-Presentation' }
FamixTAttribute classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Attribute'
		with: #french -> 'Attribut'
]
