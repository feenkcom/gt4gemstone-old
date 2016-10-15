*GtGs-Examples-AddressBook-Extensions-Pharo
spotterAddressBookFor: aStep
     <spotterOrder: -1>
     aStep listProcessor
               allCandidates: [:x | { ABAddressBook default } ];
               title: 'Address books';
               itemName: [ :addressBook | addressBook label];
               matchSubstring;
					candidatesLimit: 5;
               wantsToDisplayOnEmptyQuery: true