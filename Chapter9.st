!classDefinition: #Stack category: 'Chapter9'!
Object subclass: #Stack
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter9'!

!Stack methodsFor: 'as yet unclassified' stamp: 'NC 4/18/2021 21:00:09'!
initialize
	elements := OrderedCollection new.! !

!Stack methodsFor: 'as yet unclassified' stamp: 'NC 4/18/2021 21:03:08'!
pop
	elements isEmpty
		ifTrue: [ ^nil ]. 
	^elements removeLast.! !

!Stack methodsFor: 'as yet unclassified' stamp: 'NC 4/18/2021 21:03:17'!
push: element
	elements addLast: element.! !
