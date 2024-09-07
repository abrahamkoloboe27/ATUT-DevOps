from fastapi import FastAPI

app = FastAPI()


print("API Loaded")


@app.get("/")
def read_root():
    return {"message": "Hello, World!"}


