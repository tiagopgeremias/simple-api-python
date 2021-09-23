from typing import Optional
from fastapi import FastAPI
import toml

app = FastAPI()

f = open("pyproject.toml", "r")
parsed_pyproject = toml.loads(f.read())
f.close()

@app.get("/")
def read_root():
    return parsed_pyproject