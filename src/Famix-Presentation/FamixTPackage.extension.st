Extension { #name : #FamixTPackage }

{ #category : #'*Famix-Presentation' }
FamixTPackage classSide >> color [
	^ MDLColor blue alpha: 0.2
]

{ #category : #'*Famix-Presentation' }
FamixTPackage classSide >> kindAbbreviation [
	^ 'P'
]

{ #category : #'*Famix-Presentation' }
FamixTPackage classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Package'
		with: #french -> 'Package'
]
