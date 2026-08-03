from fastapi import HTTPException, UploadFile

ALLOWED_CONTENT_TYPES = {
    "application/pdf",
    "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
}

MAX_FILE_SIZE = 10 * 1024 * 1024  # 10 MB


async def validate_resume(file: UploadFile):
    if file.content_type not in ALLOWED_CONTENT_TYPES:
        raise HTTPException(
            status_code=400,
            detail="Only PDF and DOCX files are allowed.",
        )

    contents = await file.read()

    if len(contents) > MAX_FILE_SIZE:
        raise HTTPException(
            status_code=400,
            detail="File exceeds the 10 MB limit.",
        )

    await file.seek(0)

    return contents