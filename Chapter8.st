!classDefinition: #Account category: #Chapter8!
Object subclass: #Account
	instanceVariableNames: 'balance name log'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter8'!

!Account methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 17:47:53'!
getBalance
	^balance.! !

!Account methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 18:29:36'!
handleTransaction: aTransaction
	balance := balance + aTransaction getAmount.
	log add: aTransaction.
	! !

!Account methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 18:11:38'!
initialBalance: anInteger
	log := SortedCollection new.
	balance := anInteger.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Account class' category: #Chapter8!
Account class
	instanceVariableNames: ''!

!Account class methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 17:43:13'!
example
	"Test by executing:
	
		Account example inspect
		
	"
	| account transaction |
	account := Account newBalance: 2500.
	transaction := Transaction newAmount: -300 date: Date today.
	account handleTransaction: transaction.
	^account! !

!Account class methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 18:25:06'!
example2
	"Test by executing:
		
		Account example2 inspect
		
	"
	| account transaction anotherTransaction |
	account := Account newBalance: 2500.
	transaction := Transaction newAmount: -300 date: Date today.
	account handleTransaction: transaction.
	anotherTransaction := Transaction newAmount: 450 date: Date today.
	account handleTransaction: anotherTransaction.
	^account! !

!Account class methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 17:44:17'!
newBalance: anInteger
	"Answer a new instance of the receiver with balance anInteger"
	^self new initialBalance: anInteger! !


!classDefinition: #Transaction category: #Chapter8!
Object subclass: #Transaction
	instanceVariableNames: 'amount date'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Chapter8'!

!Transaction methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 18:27:54'!
<= anotherTransaction
	"Answer true if my date is before anotherTransaction's date, false otherwise"
	^ date < anotherTransaction getDate.! !

!Transaction methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 17:49:37'!
getAmount
	^amount.! !

!Transaction methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 17:49:48'!
getDate
	^date.! !

!Transaction methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 18:12:00'!
initialAmount: anInteger date: aDate
	amount := anInteger.
	date := aDate.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Transaction class' category: #Chapter8!
Transaction class
	instanceVariableNames: ''!

!Transaction class methodsFor: 'as yet unclassified' stamp: 'NC 4/11/2021 18:09:58'!
newAmount: anAmount date: aDate
	"Answer a new instance of the receiver with amount anAmount and date aDate"
	^self new initialAmount: anAmount date: aDate.
! !
