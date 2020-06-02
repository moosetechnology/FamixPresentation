Extension { #name : #FamixTCompilationUnit }

{ #category : #'*Famix-Presentation' }
FamixTCompilationUnit classSide >> kindAbbreviation [
	^ 'CU'
]

{ #category : #'*Famix-Presentation' }
FamixTCompilationUnit classSide >> nameTranslations [
	^ Dictionary
		with: #english -> 'Compilation Unit'
		with: #french -> 'Unité de compilation'
]
