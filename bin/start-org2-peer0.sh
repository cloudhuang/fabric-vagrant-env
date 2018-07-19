export set FABRIC_CFG_PATH=/vagrant/fabric/config/org2-peer0
# /vagrant/fabric/bin/peer node start
/vagrant/fabric/bin/peer node start >> ./org2-peer0.log 2>&1 &
