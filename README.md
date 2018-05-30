1. clone this project

2. copy config files samples:
    `cp .pgpass.sample .pgpass`
    `cp src/config/config.json.sample src/config/config.json`
    
3. **For prod**:
    - set plain pg password in `.pgpass` file
    - set this password in `src/config/config.json`
    - set NODE_ENV environment variable to `production` in `node` service in `docker-compose.yml`
    - remove `default` network from `db` service in `docker-compose.yml`
    
4. run `docker-compose up`

