import uvicorn
from backend.backend_app import app
import os


if __name__ == "__main__":
    ## Running ASGI Server
    print(f"""\x1b[6;30;42m APP {os.environ["ID"]} is running on port 3000 \x1b[0m""")
    uvicorn.run(f"main:app", host="0.0.0.0", port=3000)