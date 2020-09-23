test:
	[ -f ./go.mod ] && rm -f ./go.mod
	#go mod init github.com/tutorialedge/go-fiber-tutorial
	#go mod init github.com/gentoobreaking/go-fiber-tutorial
	go mod init go-fiber-tutorial # use local package
	go run main.go

build: 
	go env -w GO111MODULE="on"
	go env -w GOPATH="/Users/david/Data/git_my/GO"
	go env|grep GO111MODULE
	go env|grep GOPATH
	[ -f ./go.mod ] && rm -f ./go.mod
	go mod init go-fiber-tutorial # use local package
	go build

docker:
	docker build --no-cache -t test:0.1 . -f Dockerfile_scratch
	#docker build -t test:0.1 . -f Dockerfile_alpine

injecto:
	docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v /tmp:/tmp joshwget/injecto test:0.1 005272e9f810

clean:
	rm -f go-fiber-tutorial

