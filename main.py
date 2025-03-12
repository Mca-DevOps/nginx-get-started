import uvicorn
from backend.backend_app import app
from backend import backend_app


if __name__ == "__main__":
    ## Running ASGI Server
    uvicorn.run(f"{backend_app}:{app}", host="0.0.0.0", port=3000, reload=True)