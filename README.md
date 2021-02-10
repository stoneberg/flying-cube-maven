# flying-cube-maven
- Springboot Backend
- You need to install redis to test
- https://github.com/MicrosoftArchive/redis/releases (windows)
- docker-compose
version: '3'
services:
    redis:
      image: redis
      command: redis-server --port 6379
      container_name: devops-redis
      hostname: redis
      labels:
        - "name=redis"
        - "mode=standalone"
      ports:
        - 6379:6379


