Extension { #name : #FamixTNamespace }

{ #category : #'*Famix-Presentation' }
FamixTNamespace classSide >> color [
	^ (MDLColor tint: #teal code: #'800') alpha: 0.4
]

{ #category : #'*Famix-Presentation' }
FamixTNamespace classSide >> kindAbbreviation [
	^ 'N'
]

{ #category : #'*Famix-Presentation' }
FamixTNamespace classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Namespace'
		with: #french -> 'Namespace'
]
