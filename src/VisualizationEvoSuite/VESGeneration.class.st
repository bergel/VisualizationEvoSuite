Class {
	#name : 'VESGeneration',
	#superclass : 'Object',
	#instVars : [
		'individuals',
		'iteration'
	],
	#category : 'VisualizationEvoSuite',
	#package : 'VisualizationEvoSuite'
}

{ #category : 'accessing' }
VESGeneration >> individuals [

	^ individuals
]

{ #category : 'accessing' }
VESGeneration >> individuals: anObject [

	individuals := anObject
]

{ #category : 'as yet unclassified' }
VESGeneration >> initialize [
	individuals := OrderedCollection new
]

{ #category : 'accessing' }
VESGeneration >> iteration [

	^ iteration
]

{ #category : 'accessing' }
VESGeneration >> iteration: anObject [

	iteration := anObject
]

{ #category : 'as yet unclassified' }
VESGeneration >> numberOfIndividuals [
	^ individuals size
]
