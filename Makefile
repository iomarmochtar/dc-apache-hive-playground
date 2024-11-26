DC=docker compose
DCH=$(DC) exec -it hive-server

.PHONY: hive-sh
hive-sh:
	$(DCH) /bin/bash

.PHONY: insert
insert:
	$(DCH) hive -f /employee/employee_table.hql
	$(DCH) hadoop fs -put /employee/employee.csv hdfs://namenode:8020/user/hive/warehouse/testdb.db/employee

.PHONY: status
status:
	$(DC) ps

.PHONY: start
start:
	$(DC) up -d --remove-orphans

.PHONY: cleanup
cleanup:
	$(DC) down

.PHONY: logs
logs:
	$(DC) logs --tail 10 -f
