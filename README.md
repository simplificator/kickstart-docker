# Ansible, Docker and Semaphore 2.0 Kickstart / Demo Project

This projects is intended to demonstrate how to 

* configure [Semaphore 2.0](https://simplificator.semaphoreci.com/)
* use [Semaphore Secrets](https://docs.semaphoreci.com/article/66-environment-variables-and-secrets) for `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`
* build docker image
* push docker image to registry
* provision target host using `ansible`
* deploy with plain SSH/SCP access


## `ansible` Alias

*Hint*: instead of installing `ansible` you might want to run it in a container, using 

```bash
alias ansible='docker run --rm -it -v $(pwd)/ansible:/etc/ansible -v ~/.ssh:/root/.ssh simplificator/ansible ansible'
```

Find more information on [simplificator/ansible](https://hub.docker.com/r/simplificator/ansible)

## Further reading:

* [CI/CD with Docker and Semaphore](https://semaphoreci.com/docs/docker/setting-up-continuous-integration-for-docker-project.html)
* [How to Run a docker container in AWS cloud](https://github.com/simplificator/doc/wiki/Run-a-docker-container-in-AWS-cloud)

