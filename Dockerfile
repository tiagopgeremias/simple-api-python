FROM python:3.8-alpine

LABEL author="github.com/tiagopgeremias"

WORKDIR /app

COPY ./requirements.txt /app/
COPY ./pyproject.toml /app/

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]

