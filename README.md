# fastapi_test
FastAPI, Docker, GitHub Actions with deploy to private VPS


# Init

1. Build image

docker build -t fastapi_test_image .

2. Run container

docker run -d --name fastapi_test_container -p 8000:8000 fastapi_test_image

3. Check

curl http://127.0.0.1:8000/ 

return

{"Hello":"World"}



Stop container

docker ps -a -q --filter="name=fastapi_test_container"
	