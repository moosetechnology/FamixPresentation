Extension { #name : #FamixTGlobalVariable }

{ #category : #'*Famix-Presentation' }
FamixTGlobalVariable classSide >> color [
	^ MDLColor indigo
]

{ #category : #'*Famix-Presentation' }
FamixTGlobalVariable classSide >> kindAbbreviation [
	^ 'GV'
]

{ #category : #'*Famix-Presentation' }
FamixTGlobalVariable classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Global Variable'
		with: #french -> 'Variable gloable'
]
