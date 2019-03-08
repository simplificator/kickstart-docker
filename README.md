# Docker and Semaphore 2.0 Kickstart / Demo Project

This projects is intended to demonstrate how to 

* configure [Semaphore 2.0](https://simplificator.semaphoreci.com/)
* use [Semaphore Secrets](https://docs.semaphoreci.com/article/66-environment-variables-and-secrets) for `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`
* build docker image
* push docker image to registry
* deploy it to a AWS Lightsail instance

## docker-stack-wait.sh

`docker-stack-wait.sh` is currently taken from here: https://github.com/sudo-bmitch/docker-stack-wait/blob/master/docker-stack-wait.sh

Keep it in sync with:

```
curl -sS --output deploy/docker-stack-wait.sh https://raw.githubusercontent.com/sudo-bmitch/docker-stack-wait/master/docker-stack-wait.sh
```

## Further reading:

* [CI/CD with Docker and Semaphore](https://semaphoreci.com/docs/docker/setting-up-continuous-integration-for-docker-project.html)
* [How to Run a docker container in AWS cloud](https://github.com/simplificator/doc/wiki/Run-a-docker-container-in-AWS-cloud)

