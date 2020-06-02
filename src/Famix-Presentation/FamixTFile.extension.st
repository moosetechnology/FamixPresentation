Extension { #name : #FamixTFile }

{ #category : #'*Famix-Presentation' }
FamixTFile classSide >> color [
	^ MDLColor tint: #grey code: '300'
]

{ #category : #'*Famix-Presentation' }
FamixTFile classSide >> kindAbbreviation [
	^ 'Fi'
]

{ #category : #'*Famix-Presentation' }
FamixTFile classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'File'
		with: #french -> 'Fichier'
]
