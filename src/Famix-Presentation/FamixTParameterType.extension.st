Extension { #name : #FamixTParameterType }

{ #category : #'*Famix-Presentation' }
FamixTParameterType classSide >> color [
	^ MDLColor tint: #light_blue
]

{ #category : #'*Famix-Presentation' }
FamixTParameterType classSide >> kindAbbreviation [
	^ 'PT'
]

{ #category : #'*Famix-Presentation' }
FamixTParameterType classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Type Parameter'
		with: #french -> 'Type paramètre'
]
