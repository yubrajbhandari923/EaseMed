import requests
from fastapi import FastAPI
from backend_code.health_news.health_news import news

app=FastAPI()



@app.get("/news")
async def get_news():
    data=news()
    return data
