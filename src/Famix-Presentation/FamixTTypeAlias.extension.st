Extension { #name : #FamixTTypeAlias }

{ #category : #'*Famix-Presentation' }
FamixTTypeAlias classSide >> color [
	^ MDLColor tint: #deep_purple
]

{ #category : #'*Famix-Presentation' }
FamixTTypeAlias classSide >> kindAbbreviation [
	^ 'Ty'
]

{ #category : #'*Famix-Presentation' }
FamixTTypeAlias classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Type Alias'
		with: #french -> 'Alias de Type'
]
