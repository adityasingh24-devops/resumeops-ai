import uuid

from google.cloud import storage

BUCKET_NAME = "resumeops-dev-storage"

client = storage.Client()


def upload_resume(file_bytes: bytes, filename: str) -> str:
    extension = filename.split(".")[-1]

    object_name = f"resumes/{uuid.uuid4()}.{extension}"

    bucket = client.bucket(BUCKET_NAME)
    blob = bucket.blob(object_name)

    blob.upload_from_string(file_bytes)

    return object_name