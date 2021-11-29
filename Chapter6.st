!classDefinition: #Book category: #Chapter6!
Object subclass: #Book
	instanceVariableNames: 'isbn'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter6'!

!Book methodsFor: 'as yet unclassified' stamp: 'NC 4/8/2021 00:23:55'!
= anotherBook
	"This is made to exemplify the anomaly of the disappearing element"
	^self getIsbn = anotherBook getIsbn.! !

!Book methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 20:23:33'!
getIsbn
	^isbn.! !

!Book methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 20:23:23'!
setIsbn: anIsbn
	isbn = anIsbn.! !
