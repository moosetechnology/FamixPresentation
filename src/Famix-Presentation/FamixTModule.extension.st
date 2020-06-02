Extension { #name : #FamixTModule }

{ #category : #'*Famix-Presentation' }
FamixTModule classSide >> color [
	^ MDLColor tint: #light_blue code: #'500'
]

{ #category : #'*Famix-Presentation' }
FamixTModule classSide >> kindAbbreviation [
	^ 'Mo'
]

{ #category : #'*Famix-Presentation' }
FamixTModule classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Module'
		with: #french -> 'Module'
]
