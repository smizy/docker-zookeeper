
setup() {
  docker network create vnettest
  docker run --name zookeeper-1 --hostname zookeeper-1.vnettest --net vnettest -d smizy/zookeeper -server 1 1 vnettest 
  sleep 3
}

teardown() {
  docker rm -fv zookeeper-1
  docker network rm vnettest
}
