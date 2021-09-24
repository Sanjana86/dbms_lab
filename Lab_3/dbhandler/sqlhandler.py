import mysql.connector 

class Mysqlhandler:

    def _init_(self):
        pass
    def add_user(self):
        cnx= mysql.connector.connect(user='root',password='rootroot',database='user_db')
        cursor = cnx.cursor()
        query1 = ("insert into user_data values('loki',6219,'2001-05-9')")
        query2 = ("insert into user_data values('sylvie',6495,'2001-06-12')")
        query3 = ("ininsert into user_data values('kang',6112,'1999-01-1')")
        cursor.execute(query1)
        cursor.execute(query2)
        cursor.execute(query3)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("adding details to table user_data")
        
    def update_user(self):
        cnx= mysql.connector.connect(user='root',password='rootroot',database='user_db')
        cursor = cnx.cursor()
        query4 = ("update user_data set name='mobius',dob='2001-01-20' where phno=6198")
        cursor.execute(query4)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("updating details of user_data")
        
    def delete_user(self):
        cnx= mysql.connector.connect(user='root',password='rootroot',database='user_db')
        cursor = cnx.cursor()
        query5 = (" delete from user_data where phno=6112 ")
        cursor.execute(query5)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("deleting details from user_data table")
        
    def display_user(self):
        cnx= mysql.connector.connect(user='root',password='rootroot',database='user_db')
        cursor = cnx.cursor()
        query = ("select * from user_data")
        cursor.execute(query)
        print(list(cursor))


if __name__=="__main__":
    mysqlhandler=Mysqlhandler()
    print("user_data table details")
    mysqlhandler.display_user()
    mysqlhandler.add_user()
    mysqlhandler.display_user()
    mysqlhandler.update_user()
    mysqlhandler.display_user()
    mysqlhandler.delete_user()
    mysqlhandler.display_user()
    
