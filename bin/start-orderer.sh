export set FABRIC_CFG_PATH=/vagrant/fabric/config/orderer
# /vagrant/fabric/bin/orderer start
/vagrant/fabric/bin/orderer start >> ./orderer_log.log 2>&1 &
