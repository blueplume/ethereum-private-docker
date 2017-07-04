docker-machine scp -r config eschain:/home/docker/config
docker-machine scp -r data1 eschain:/home/docker/data1
docker-machine scp -r data2 eschain:/home/docker/data2
docker-machine scp -r data-miner eschain:/home/docker/data-miner
docker run -v /home/docker/data1:/data -v /home/docker/config:/config -it ethereum/client-go init /config/genesis.json
docker run -v /home/docker/data2:/data -v /home/docker/config:/config -it ethereum/client-go init /config/genesis.json
