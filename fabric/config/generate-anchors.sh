echo 'generate org1 anchor file'
configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate ./org1MSPanchors.tx -channelID myexamplechannel -asOrg Org1MSP

echo 'generate org2 anchor file'
configtxgen -profile TwoOrgsChannel -outputAnchorPeersUpdate ./org2MSPanchors.tx -channelID myexamplechannel -asOrg Org2MSP