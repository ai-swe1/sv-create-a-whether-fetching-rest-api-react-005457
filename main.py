import os
from fastapi import FastAPI, HTTPException
from fastapi.staticfiles import StaticFiles
from fastapi.responses import HTMLResponse
from fastapi.middleware.cors import CORSMiddleware
import uvicorn

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins="*",
    allow_methods="*",
    allow_headers="*",
)

app.mount("/static", StaticFiles(directory="static"), name="static")

@app.get("/")
async def read_index():
    with open('./static/index.html', 'r') as f:
        html_content = f.read()
    return HTMLResponse(content=html_content, status_code=200)

if __name__ == '__main__':
    os.makedirs("static", exist_ok=True)
    uvicorn.run(app, host='0.0.0.0', port=8000, reload=True)
