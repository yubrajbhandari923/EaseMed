import requests
from fastapi import FastAPI
from backend_code.health_news.health_news import news
from backend_code.chatbot.chat import bot_name,get_response
import json
import random
import json
from pathlib import Path
import torch
from backend_code.chatbot.model import NeuralNet
from backend_code.chatbot.nltk_utils import bag_of_words, tokenize



with open("backend_code/doctors_list/UpdatingDoctors.json") as s:
    doctors_list=s.read()
    doctors_list=json.loads(doctors_list)
with open("backend_code/hospitals_list/hospitals_data.json") as s:
    hospitals_data=s.read()
    hospitals_data=json.loads(hospitals_data)

app=FastAPI()

@app.get("/news")
async def get_news():
    data=news()
    return data

@app.get("/doctors")
async def get_doctors():
    return doctors_list

@app.get("/hospitals")
async def get_hospitals():
    return hospitals_data

@app.get("/chatbot")
async def chatbot(saysomething):
    msg=f"{bot_name} : {get_response(saysomething)}"
    return msg
