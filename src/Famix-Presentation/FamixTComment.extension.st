Extension { #name : #FamixTComment }

{ #category : #'*Famix-Presentation' }
FamixTComment classSide >> color [
	^ MDLColor tint: #amber code: #'300'
]

{ #category : #'*Famix-Presentation' }
FamixTComment classSide >> kindAbbreviation [
	^ 'Co'
]

{ #category : #'*Famix-Presentation' }
FamixTComment classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Comment'
		with: #french -> 'Commentaire'
]
