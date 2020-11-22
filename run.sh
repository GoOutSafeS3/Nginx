#!/bin/sh

case "$1" in
    "unittests")
        cd ./BookingService
        ./run.sh unittests
        cd ..

        cd ./RestaurantService
        ./run.sh unittests
        cd ..
        ;;
    "integration-tests")
        docker-compose -f ./docker-compose.integrationtests.yml build
        docker-compose -f ./docker-compose.integrationtests.yml up tests
        docker-compose -f ./docker-compose.integrationtests.yml down
        ;;
    "frontend-tests")
        echo TO DO!
        ;;
    "deploy-prod")
        docker-compose build
        docker-compose up --scale api=3
        ;;
    "deploy-test")
        docker-compose -f ./docker-compose.tests.yml build
        docker-compose -f ./docker-compose.tests.yml up --scale api=3
        ;;
    *)
        echo Mode not present! Try again!
        ;;
esac