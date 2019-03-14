# Project quality assurance

We, Simplificator, aim to deliver high quality software to our customers during the entire product lifecycle. We strive for sustainability: robustness and maintainability. This checklist is intended to help teams achieve these goals.

At the stage of go-live of a project, all points are expected to be implemented or documented.

### Code

* [ ] Clean code / Styleguide 
* [ ] Static code anlaysis / Metrics (e.g. CodeClimate, please link results from readme)

### Automation

* [x] Continuous delivery pipeline:  [Semaphore 2.0](https://simplificator.semaphoreci.com/projects/kickstart-docker)
* [x] Automated on-merge deployment to staging; automated or single-click to deployment production

### Security

* [ ] Communication encrypted. SSL, https
* [ ] Client Data Protection
* [ ] Use Vaults / appropriate stores for secrets
* [ ] Access: SSH key management or external identity provider
* [ ] Implement backup strategy and document disaster recovery

### Documentation

Treat documentation as code. Keep it clean and under version control. Usually a good place for documentation is the Readme.md file of a repository and some linked Markdown files from there.

* [ ] High-level architecture is described, incl. diagram
* [ ] All interfaces are described, including third-party APIs along with a link to the provider
* [ ] Test coverage described or linked - this can be an absolute metric or a semantic description of the coverage, examples in brackets
  * Unit tests ("good", "main functionality covered", "poor")
  * Integration tests, e.g. smoke tests  ("happy cases of main scenarios covered", "server startup", "none")
  * Health checks, typically of docker containers ("implemented", "verified after deployment")
  * Performance tests
* [ ] Moco & [AppsApp](https://apps.simplificator.com) properly linked
* [ ] Authentication mechanisms for DevOps tasks are documented - this can be either in the [AppsApp](https://apps.simplificator.com), implicitly in the deployment scripts or explicitly in the readme of the project - examples:
  * how to access a production server. (e.g. Citrix, then SSH, ...)
  * how to access application logs for analysis

### Monitoring

* [ ] Bug Reporting (e.g. Bugsnag)
* [ ] Availability / Uptime (e.g. Nodeping)

### Processes

* [ ] User Stories / Storyboard for Requirements Engineering
* [ ] Project Board / Backlogs / Kanban Boards to visualize work (e.g. Trello)
  * estimated, suficiently small
  * acceptance and ready criteria defined

* [ ] Pair Programming / Merge Request Review
* [ ] Know-how transfers, tech. Talks

