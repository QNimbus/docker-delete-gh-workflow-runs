# qnimbus/delete-gh-workflow-runs <!-- omit in toc -->

![Linting](https://github.com/qnimbus/docker-delete-gh-workflow-runs/workflows/Linting/badge.svg) ![Docker](https://github.com/qnimbus/docker-delete-gh-workflow-runs/workflows/Docker/badge.svg) ![Publish Docker image](https://github.com/QNimbus/docker-delete-gh-workflow-runs/workflows/Publish%20Docker%20image/badge.svg)

## Table of Contents <!-- omit in toc -->

- [Why](#why)
- [Requirements](#requirements)
- [Quick Start](#quick-start)
- [Usage](#usage)
- [Troubleshooting](#troubleshooting)

## Why

This dockerized NodeJS app was created to quickly remove old GitHub workflow results in bulk as opposed to manually deleting
these one by one.

## Requirements

- GitHub Personal Access Token \*

*\* You need a GitHub personal access token (PAT) with at least the `workflow` scope enabled. You can create your own personal access token [here](https://github.com/settings/tokens).*

## Quick Start

## Usage

Run the docker container as follows:

```bash
docker run --rm qnimbus/delete-gh-workflow-runs <OWNER> <REPOSITORY> <WORKFLOW_NAME> <PAT>
```

### Arguments

| Name       | Default | Description                                                                    |
| ---------- | ------- | ------------------------------------------------------------------------------ |
| OWNER      | -       | Owner of the GitHub repository (e.q . 'qnimbus')                               |
| REPOSITORY | -       | Name of the GitHub repository (e.q . 'qnimbus/docker-delete-gh-workflow-runs') |
| WORKFLOW_NAME | -       | Name of the workflow. Can be found either in the GitHub Actions UI or at the top of your workflow file. |
| PAT | -       | Your GitHub Personal Access Token |

## Troubleshooting

When running the docker commands from a Windows Git Bash shell (MSYS) you may need to prepend the `MSYS_NO_PATHCONV=1` environment variable to the commands like so:

```bash
MSYS_NO_PATHCONV=1 docker run --rm -it qnimbus/delete-gh-workflow-runs
```
