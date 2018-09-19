from sys import argv

import bottle
from bottle import *
import urllib.request, json

@route("/")
def index():
    return """
    <h2>Verkefni 4</h2>
    <p><a href="/a">Local Json</a></p>
    <p><a href="/b">Json API</a></p>
    """



@route("/a")
def index():
    return template("index.tpl")

with urllib.request.urlopen("http://apis.is/currency/") as url:
    data= json.loads(url.read().decode())


@route("/b")
def index():
    return template("index2.tpl", data=data)

##########################################
@error(404)
def villa(error):
    return "<h2>Error 404: Not Found</h2>"

@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

bottle.run(host="0.0.0.0", port=argv[1])
