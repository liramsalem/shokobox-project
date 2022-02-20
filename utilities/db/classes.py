from utilities.db.db_manager import dbManager

class Classes:

    @staticmethod
    def is_available(class_name,class_date,class_time):
        current_participants= dbManager.fetch(f"SELECT num_of_participants FROM classes WHERE class_name='{class_name}'  AND class_date='{class_date}' AND class_time='{class_time}'")
        if len(current_participants)==0:
            num_of_participants=0
        else:
            num_of_participants = current_participants[0][0]
        max = dbManager.fetch(f"SELECT max_participants FROM classes WHERE class_name='{class_name}'  AND class_date='{class_date}' AND class_time='{class_time}'")
        max_participants = max[0][0]
        if num_of_participants<max_participants:
            dbManager.commit(f"UPDATE classes SET num_of_participants=num_of_participants+1  WHERE class_name='{class_name}'  AND class_date='{class_date}' AND class_time='{class_time}'")
            return True
        return False

    @staticmethod
    def insert_to_participents_in_class(user_email,class_name,class_date,class_time):
        return dbManager.commit(
            f"INSERT INTO participents_in_class (user_email, class_name,class_date,class_time) VALUES ('{user_email}','{class_name}', '{class_date}', '{class_time}')")

    @staticmethod
    def add_to_class_contact(full_name,phone):
        return dbManager.commit(
            f"INSERT INTO classes_contact (Full_name, phone) VALUES ('{full_name}','{phone}')")


# Creates an instance for the DBManager class for export.
class_ = Classes()
