Extension { #name : #FamixTType }

{ #category : #'*Famix-Presentation' }
FamixTType classSide >> color [
	^ MDLColor purple
]

{ #category : #'*Famix-Presentation' }
FamixTType classSide >> kindAbbreviation [
	^ 'T'
]

{ #category : #'*Famix-Presentation' }
FamixTType classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Type'
		with: #french -> 'Type'
]
