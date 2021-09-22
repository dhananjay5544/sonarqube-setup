# Sonarqube setup (local)

### Prerequisites:

- Linux or MacOS
- docker
- sonar-sanner

1. Sonar-scanner installation.

    ```bash
    # change permission to execute script.
    chmod +x sonar-scanner-install.sh

    # run script to install.
    ./sonar-scanner-install.sh
    ```

2. Setting up the sonar server.
    - modify system settings.

        ```bash
        sudo sysctl -w vm.max_map_count=524288
        sudo sysctl -w fs.file-max=131072
        ```
    - spin up docker containers
    
        ```bash
        # docker compose.
        docker-compose up -d
        ```

3. Go to http://localhost:9000 to access sonarqube server.


### references: 
-   [official docs](https://docs.sonarqube.org/latest/)
-   [dockerhub](https://hub.docker.com/_/sonarqube)
 
### Author
Dhananjay Shinde [LinkedIn]("www.linkedin.com/in/dhananjay-shinde-🇮🇳-a5a763168")