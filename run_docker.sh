mkdir -p data/bags data/results
docker run -v $(realpath data):/root/data -it frankensam /bin/bash
