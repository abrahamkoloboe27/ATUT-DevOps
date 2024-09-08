from fastapi import FastAPI

app = FastAPI()


print("API Loaded")


@app.get("/")
def read_root():
    return {"message": "Hello, World!"}


@app.get("/welcome/{name}")
def welcome_name(name: str):
    return {"message": f"You're Welcome {name}"}