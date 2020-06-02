Extension { #name : #FamixTFolder }

{ #category : #'*Famix-Presentation' }
FamixTFolder classSide >> color [
	^ MDLColor blue alpha: 0.4
]

{ #category : #'*Famix-Presentation' }
FamixTFolder classSide >> kindAbbreviation [
	^ 'F'
]

{ #category : #'*Famix-Presentation' }
FamixTFolder classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Folder'
		with: #french -> 'Repertoire'
]
