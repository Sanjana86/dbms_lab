from . import app

from dbhandler import Mysqlhandler

@app.route("/get_users",methods=["GET","POST"])
def get_user():
	data=Mysqlhandler.display_user()
	return data

@app.route("/get_users",methods=["GET","POST"])
def get_user():
	data=Mysqlhandler.delete_user()
	return data

@app.route("/get_users",methods=["GET","POST"])
def get_user():
	data=Mysqlhandler.update_user()
	return data

@app.route("/get_users",methods=["GET","POST"])
def get_user():
	data=Mysqlhandler.add_user()
	return data