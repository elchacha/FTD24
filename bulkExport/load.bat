echo "-- Loading Account"
sfdx force:data:bulk:upsert -s Account -f ./bulkExport/account.csv -i ExternalId__c  --wait 40

echo "-- Loading Contact
sfdx force:data:bulk:upsert -s Contact -f ./bulkExport/contact.csv -i ExternalId__c  --wait 40 

echo "-- Loading ObjectA
sfdx force:data:bulk:upsert -s ObjectA__c -f ./bulkExport/objectA.csv -i Name  --wait 40 

echo "-- Loading ObjectB
sfdx force:data:bulk:upsert -s ObjectB__c -f ./bulkExport/objectB.csv -i Name  --wait 40 

echo "-- Loading ObjectA
sfdx force:data:bulk:upsert -s ObjectA__c -f ./bulkExport/objectA_AfterObjectB.csv -i Name  --wait 40 
