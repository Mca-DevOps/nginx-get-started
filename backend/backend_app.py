import fastapi
import uvicorn

app = fastapi.FastAPI()

@app.get("/")
async def index_page():
    return fastapi.responses.FileResponse("frontend/index.html", media_type="text/html")

@app.get("/payment")
async def payment_page():
    return fastapi.responses.FileResponse("frontend/payment.html", media_type="text/html")