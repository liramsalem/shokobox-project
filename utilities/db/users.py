from utilities.db.db_manager import dbManager


class Users:

    @staticmethod
    def check_user_in_db(user_email,password):
        check_email = dbManager.fetch(f"SELECT user_email FROM users WHERE user_email='{user_email}'")
        if len(check_email)==0:
            return False
        else:
            check_password = dbManager.fetch(f"SELECT password FROM users WHERE user_email='{user_email}'")
            if password ==  check_password[0][0]:
                 return True
            else:
                  return False

    @staticmethod
    def get_user_name(user_email):
        name= dbManager.fetch(f"SELECT Fname FROM users WHERE user_email='{user_email}'")
        return name[0][0]

    @staticmethod
    def insert_user(user_email, Fname, Lname, phone, password,  BirthDate):
        return dbManager.commit(
            f"INSERT INTO users (user_email, Fname, Lname, phone, password,  BirthDate) VALUES ('{user_email}','{Fname}', '{Lname}', '{phone}', '{password}', '{BirthDate}')")

    @staticmethod
    def check_user_exists(user_email):
        check_email = dbManager.fetch(f"SELECT user_email FROM users WHERE user_email='{user_email}'")
        if len(check_email)==0:
            return False
        else:
            return True


# Creates an instance for the DBManager class for export.
user = Users()



