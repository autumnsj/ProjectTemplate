FROM mysql:5.7.40
ADD  nacos.sql /docker-entrypoint-initdb.d/nacos-mysql.sql
RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/nacos-mysql.sql
ADD seata.sql /docker-entrypoint-initdb.d/seata-mysql.sql
RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/seata-mysql.sql
ADD xxl-job.sql /docker-entrypoint-initdb.d/xxl-job.sql
RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/xxl-job.sql
EXPOSE 3306
CMD ["mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]