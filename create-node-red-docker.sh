docker create --entrypoint "/data/entrypoint.sh" -it -p 1880:1880 -v ./node-red-data:/data -e NODE_RED_ENABLE_PROJECTS=true --name vanpi-dev nodered/node-red
