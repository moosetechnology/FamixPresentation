Extension { #name : #FamixTag }

{ #category : #'*Famix-Presentation' }
FamixTag class >> color [
	^ MDLColor white
]

{ #category : #'*Famix-Presentation' }
FamixTag class >> kindAbbreviation [
	^ 'Co'
]

{ #category : #'*Famix-Presentation' }
FamixTag class >> nameTranslations [
	^ Dictionary
		with: #english -> 'Tag'
		with: #french -> 'Tag'
]
