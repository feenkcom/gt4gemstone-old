accessing
itemNameBlock
	^ itemNameBlock ifNil: [ itemNameBlock := self defaultItemNameBlock ]