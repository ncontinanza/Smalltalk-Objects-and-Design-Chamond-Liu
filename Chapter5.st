!classDefinition: #Animal category: #Chapter5!
Object subclass: #Animal
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter5'!

!Animal methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 18:26:58'!
display: aString
	"Display aString in the transcript"
	Transcript cr;
		show: aString;
		cr.! !

!Animal methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 18:58:04'!
setName: aName
	name := aName.! !

!Animal methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 18:27:24'!
talk
	"Speak tersely"
	self display: 'I have nothing to say'.! !


!classDefinition: #Bird category: #Chapter5!
Animal subclass: #Bird
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter5'!


!classDefinition: 'Parrot' category: #Chapter5!
Bird subclass: 'Parrot'
	instanceVariableNames: 'vocabulary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter5'!

!Parrot methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 18:35:57'!
setVocabulary: aString
	vocabulary := aString.! !

!Parrot methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 18:33:23'!
talk
	"Repeat my vocabulary"
	self display: vocabulary.! !


!classDefinition: #Penguin category: #Chapter5!
Bird subclass: #Penguin
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter5'!


!classDefinition: #Mammal category: #Chapter5!
Animal subclass: #Mammal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter5'!


!classDefinition: #Dog category: #Chapter5!
Mammal subclass: #Dog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter5'!


!classDefinition: #Human category: #Chapter5!
Mammal subclass: #Human
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter5'!

!Human methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 18:59:00'!
blab
	super talk.! !

!Human methodsFor: 'as yet unclassified' stamp: 'NC 4/7/2021 19:02:54'!
talk
	self blab.
	self display: 'My name is ', name printString. ! !


!classDefinition: #Whale category: #Chapter5!
Mammal subclass: #Whale
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter5'!
