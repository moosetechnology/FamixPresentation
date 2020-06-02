Extension { #name : #FamixTParameterizedType }

{ #category : #'*Famix-Presentation' }
FamixTParameterizedType classSide >> color [
	^ MDLColor tint: #purple
]

{ #category : #'*Famix-Presentation' }
FamixTParameterizedType classSide >> kindAbbreviation [
	^ 'PT'
]

{ #category : #'*Famix-Presentation' }
FamixTParameterizedType classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Parameterized Type'
		with: #french -> 'Type Paramétré'
]
