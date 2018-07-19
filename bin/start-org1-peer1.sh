export set FABRIC_CFG_PATH=/vagrant/fabric/config/org1-peer1
# /vagrant/fabric/bin/peer node start
/vagrant/fabric/bin/peer node start >> ./org1-peer1.log 2>&1 &
