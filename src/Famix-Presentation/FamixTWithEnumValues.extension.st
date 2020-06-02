Extension { #name : #FamixTWithEnumValues }

{ #category : #'*Famix-Presentation' }
FamixTWithEnumValues classSide >> color [
	^ MDLColor green
]

{ #category : #'*Famix-Presentation' }
FamixTWithEnumValues classSide >> kindAbbreviation [
	^ 'E'
]

{ #category : #'*Famix-Presentation' }
FamixTWithEnumValues classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Enum'
		with: #french -> 'Enum'
]
