Extension { #name : #FamixTException }

{ #category : #'*Famix-Presentation' }
FamixTException classSide >> color [
	^ MDLColor tint: #red code: #'300'
]

{ #category : #'*Famix-Presentation' }
FamixTException classSide >> kindAbbreviation [
	^ 'Ex'
]

{ #category : #'*Famix-Presentation' }
FamixTException classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Exception'
		with: #french -> 'Exception'
]
