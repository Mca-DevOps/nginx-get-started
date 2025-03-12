import uvicorn
from backend.backend_app import app


if __name__ == "__main__":
    ## Running ASGI Server
    uvicorn.run(f"main:app", host="0.0.0.0", port=3000, reload=True)