# Docker Compose Apache Hive With Hadoop Backend

All credits are goes to [Hrihi's post](https://hshirodkar.medium.com/apache-hive-on-docker-4d7280ac6f8e). This repository is only for collecting the snippets with small modification for those who just want get started with Apache Hive playground.

## Requirements

- Docker (with compose plugin).
- GNU Makefile

## How To Use

Pull images and start the containers

```sh
make start
```

In another terminal session you can see the progress of initial setup

```sh
make logs
```

Insert the dummy data

```sh
make insert
```

Query the inserted data

```sh
make hive-sh
hive
> SELECT * FROM testdb.employee;
```

[See another shortcuts command](./Makefile)
