# Ritual network simple node

## Setup

```bash
git clone https://github.com/coinblitz-pro/ritualnetwork-sn
cd ritualnetwork-sn
./manage prepare
```

### Running a node

```bash
./manage start
```

### Deploying a consumer

```bash
./manage deploy free
```

## Available commands

| Command                        | Description                                                          |
|--------------------------------|----------------------------------------------------------------------|
| `./manage prepare`             | Prepare an environment for running node (install dependencies, etc.) |
| `./manage start`               | Start a node                                                         |
| `./manage logs`                | Show node logs                                                       |
| `./manage deploy <free\|paid>` | Deploy a consumer                                                    |
| `./manage reset`               | Stop containers and remove data                                      |
