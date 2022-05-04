QUARTO_VERSION=0.9.315

for image in $(docker images --filter=reference='quarto-tests/*' --format {{.Repository}})
    do
    printf "\033[0;36m* ${image:13}\033[0m "
    docker run --rm  -v ${PWD}/quarto_binary:/quarto -ti ${image}:latest > /dev/null 2>&1
    if [ ${?} == 0 ]; then
       printf "\033[0;32mpass\033[0m\n"
    else
       printf "\033[0;31mfail\033[0m\n"
    fi
        
    done

