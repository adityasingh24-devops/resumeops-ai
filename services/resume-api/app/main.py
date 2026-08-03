from fastapi import FastAPI

from app.routes.upload import router as upload_router

app = FastAPI(title="ResumeOps AI")

app.include_router(upload_router)


@app.get("/")
def root():
    return {
        "application": "ResumeOps AI",
        "status": "running"
    }


@app.get("/health")
def health():
    return {
        "status": "healthy",
        "service": "resume-api"
    }