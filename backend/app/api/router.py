from fastapi import APIRouter

from app.api.routes import auth, chat, mandi, yield_predict, health

api_router = APIRouter()

api_router.include_router(health.router, prefix="/health", tags=["health"])
api_router.include_router(auth.router, prefix="/auth", tags=["auth"])
api_router.include_router(chat.router, prefix="/chat", tags=["chat"])
api_router.include_router(mandi.router, prefix="/mandi", tags=["mandi"])
api_router.include_router(yield_predict.router, prefix="/yield", tags=["yield"])
