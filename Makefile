all: download docker-images test 

download:
	./utils/download-quarto.sh

docker-images:
	./utils/docker-build.sh

test:
	@./utils/run-tests.sh

clean: 
	-rm -r ./quarto_binary
	-rm quarto.tar.gz

