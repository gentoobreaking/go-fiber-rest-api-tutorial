#!/bin/bash

docker build -t test:0.1 . -f Dockerfile_scratch
#docker build -t test:0.1 . -f Dockerfile_alpine

exit

# --- scratch version --- #
#panic: Failed to connect to database
#
#goroutine 1 [running]:
#main.initDatabase()
#	/build/main.go:31 +0x1f1
#main.main()
#	/build/main.go:42 +0x54

# ==> because data source file have not copy into the final docker image.


<none>                                   <none>                         6a6c58520814        51 seconds ago      502MB  # alpine image size
test                                     0.1                            ae1e408823ca        51 seconds ago      12.5MB # scratch image size


