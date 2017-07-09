eval $(docker-machine env eschain)
docker-machine ssh eschain "sudo rm -fr ~/*"
docker-machine scp -r config eschain:/home/docker/
docker-machine scp -r data-1 eschain:/home/docker/
docker-machine scp -r data-2 eschain:/home/docker/
docker-machine scp -r data-miner eschain:/home/docker/
docker-machine scp -r miner-dag eschain:/home/docker/
docker run -v /home/docker/data-1:/data -v /home/docker/config:/config -it ethereum/client-go --datadir=/data --networkid 7277 init /config/genesis.json
docker run -v /home/docker/data-2:/data -v /home/docker/config:/config -it ethereum/client-go --datadir=/data --networkid 7277 init /config/genesis.json
docker run -v /home/docker/data-miner:/data -v /home/docker/config:/config -it ethereum/client-go --datadir=/data --networkid 7277 init /config/genesis.json
docker run -v /home/docker/data-miner:/data -v /home/docker/config:/config -it ethereum/client-go --datadir=/data --networkid 7277 init /config/genesis.json
