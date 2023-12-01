# Enabling version control for Node RED `flows.json` in the VanPi

This is a small wrapper that should allow you to introduce version control via Git to the VanPi Node RED development workflow.

The approach taken here is loosely based on [this tutorial](https://binnes.github.io/Node-RED-container-prod/Node-REDsourceControl/index.html).

## Requirements

- Docker
- A MacOS or Linux machine (for the bash scripts provided, which can otherwise easily be rewritten for Windows)

## Getting started

1. Clone this repository on your local machine within a directory of your choice
2. From the folder in which you cloned the repo, run:
```
    ~$ ./create-node-red-docker.sh
    ~$ ./start-node-red-docker.sh
```

3. Create your own fork of the [`VAN_PI` repository](https://github.com/Pekaway/VAN_PI), which is where you will develop custom feature and keep in sync with the original project
4. Open Node RED at http://127.0.0.1:1880/ and start a new project by clicking on _"Clone Repository"_
5. Provide your username and email address and click _"Next"_
6. Copy-paste the _SSH_ address of your cloned _VAN_PI_ repository into _"Git Repository URL"_
7. Click on "Add new SSH key" and copy the obtained public key into your [GitHub SSH keys](https://github.com/settings/keys)
8. You might need to refresh Node RED in your browser and start adding the repository again, following the steps above, after closing the SSH window
9. Click on _"Clone"_ and wait (this might take a few minutes)
10. You will get a _"Project package file not found"_ error. Click on _"Setup project files"_
11. Next to _Files_, click _"edit"_ and point _Package_ and _Flow_ to `/VanPi-OS/package.json` and `/VanPi-OS/flows.json`
12. Click _"Save"_

You should now be able to develop in Node RED and push / pull changes to your forked Git repository. I suggest watching [this video](https://www.youtube.com/watch?v=ecrjDfZth-w) for a demonstration of how the development workflow looks like.