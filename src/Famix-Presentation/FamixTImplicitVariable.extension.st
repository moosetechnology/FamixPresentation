Extension { #name : #FamixTImplicitVariable }

{ #category : #'*Famix-Presentation' }
FamixTImplicitVariable classSide >> color [
	^ MDLColor tint: #indigo code: #'300'
]

{ #category : #'*Famix-Presentation' }
FamixTImplicitVariable classSide >> kindAbbreviation [
	^ 'IV'
]

{ #category : #'*Famix-Presentation' }
FamixTImplicitVariable classSide >> nameTranslations [
	^ Dictionary with: #english -> 'Implicit Variable' with: #french -> 'Variable Implicite'
]
