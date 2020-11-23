# GoOutSafe - ApiGateway

## Running the code

### Unit tests

```
$ ./run.sh unittests
```

### Integration tests

```
$ ./run.sh integration-tests
```

### Frontend tests

```
$ ./run.sh frontend-tests
```

### Deploy with fake data

```
$ ./run.sh deploy-test
```

### Deploy in production

```
$ ./run.sh deploy-prod
```

## Troubleshooting
In case of error, try to manually stop the containers:
```
$ ./run.sh deploy-prod
```
$ docker-compose down
$ docker-compose -f ./docker-compose.integrationtests.yml down
$ docker-compose -f ./docker-compose.tests.yml down
```
Or (Attention this command closes all currents not only those of GoOutSafe) 
```
docker stop $(docker ps -a -q) 
```
Also, if you are on WSL (1 or 2) try to restart it.

