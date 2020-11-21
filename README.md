# GoOutSafe - ApiGateway

## Running the code

### Unit tests

```
$ docker-compose -f ./docker-compose.tests.yml build
$ docker-compose up tests
```

### Running the system

```
$ docker-compose build
$ docker-compose up --scale api=3
```

