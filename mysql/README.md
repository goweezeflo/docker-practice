# Custom MysQL 8 Docker Image

1. Build the image:
    ```shell
    export DOCKER_BUILDKIT=1
    docker build -t goweezeflo/mysql:latest .
    ```
2. Run the Docker container:
    ```shell
    docker run -d --name mysql -p 3306:3306 --mount source=mysql,target=/var/lib/mysql --restart unless-stopped goweezeflo/mysql
    ```
3. Log in to MySQL as `goweezeflo` user, and use `Goweezeflo_123` as password:
    ```shell
    docker exec -it mysql mysql -ugoweezeflo -p
    ```
4. Run the following MySQL commands:
   ```sql
   SHOW DATABASES;
   USE goweezeflo;
   SHOW TABLES;
   SELECT * FROM books;
   ```
5. Exit from MySQL using the `Ctrl+D` keyboard shortcut.
6. Clean up everything:
   ```shell
   docker rm -f mysql; docker volume rm -f mysql; docker rmi goweezeflo/mysql
   ```
