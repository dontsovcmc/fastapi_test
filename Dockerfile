FROM python:3.9

# 
WORKDIR /code

#  Prevents Python from writing pyc files to disc (equivalent to python -B
ENV PYTHONDONTWRITEBYTECODE 1

#  Prevents Python from buffering stdout and stderr (equivalent to python -u
ENV PYTHONUNBUFFERED 1

# 
COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app


#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
