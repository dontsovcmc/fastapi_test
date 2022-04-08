# fastapi_test
FastAPI, Docker, GitHub Actions with deploy to private VPS


# Init

1. Build image

docker-compose build

2. Run container

docker-compose up -d

3. Check

curl http://127.0.0.1:8000/ 

return

{"Hello":"World"}



Stop container

docker ps -a -q --filter="name=fastapi_test_container"


docker restart fastapi_test_container



# VPS setup

1. Создаем ssh ключ для github

ssh-keygen -t rsa -b 4096 -C "<email>"

2. назовём файл 

github

3. без пароля

without pass phrase

4. записываем публичный ключ в список доступа

cat github.pub >> ~/.ssh/authorized_keys

5. cat github - печатаем и копируем в буфер приватный ключ

-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAACFwAAAAdzc2gtcn
........
/gZe/RaaYlJdjQAAABRkb24tYW5kLWhvbWVAbWFpbC5ydQECAwQF
-----END OPENSSH PRIVATE KEY-----

6. Добавляем ключ в github secrets
https://github.com/dontsovcmc/fastapi_test/settings/secrets/actions

имя переменной: SSHKEY

7. 
