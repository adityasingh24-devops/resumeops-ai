from fastapi import APIRouter, UploadFile, File

from app.services.storage import upload_resume
from app.utils.validation import validate_resume

router = APIRouter(
    prefix="/upload",
    tags=["Upload"],
)


@router.post("/")
async def upload(file: UploadFile = File(...)):
    contents = await validate_resume(file)

    object_name = upload_resume(
        contents,
        file.filename,
    )

    return {
        "filename": file.filename,
        "object_name": object_name,
        "bucket": "resumeops-dev-storage",
        "status": "uploaded",
    }