testing
testHistoryVersionFromDirectory
	| version |
	version := HistoryVersion newFromDirectory: (HistoryTestTools file: '1.23').
	self assert: '1.23' equals: version versionName.
	self assert: 5 equals: version changesByName size.
	self assert: #doIt equals: ((version changesByName at: 'Squeak1.23.changes') first type)