from pydantic_settings import BaseSettings


class Settings(BaseSettings):
    project_id: str = "resumeops-ai-aditya"
    bucket_name: str = "resumeops-dev-storage"

    class Config:
        env_prefix = "RESUMEOPS_"


settings = Settings()