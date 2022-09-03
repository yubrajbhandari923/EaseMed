from requests_html import HTMLSession
from newspaper import Article
import sqlite3



def main():
#loop through each article to find the title and link. try and except as repeated articles from other sources have different h tags.
    for item in articles:
        try:
            newsitem = item.find('h3', first=True)
            title = newsitem.text
            link = 'https://news.google.com'+list(newsitem.links)[0][1:]
            article = Article(link)
            article.download()
            article.parse()
            article.nlp()
            newsarticle = [ 
                title,
                link,
                article.summary
            ]
            newslist.append(newsarticle)
        except Exception as e:
            pass