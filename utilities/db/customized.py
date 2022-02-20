from utilities.db.db_manager import dbManager

class Customized_Cakes:

    @staticmethod
    def get_all_sizes():
        return dbManager.fetch(
            f"SELECT * FROM size_table");
    @staticmethod
    def get_all_languages():
        return dbManager.fetch(
            f"SELECT * FROM language_table");
    @staticmethod
    def get_all_flavors():
        return dbManager.fetch(
            f"SELECT * FROM flavor_table");
    @staticmethod
    def get_all_extras():
        return dbManager.fetch(
            f"SELECT * FROM extra_table");
    @staticmethod
    def get_all_shapes():
        return dbManager.fetch(
            f"SELECT * FROM shape_table");

    @staticmethod
    def insert_cus_product(user_email,product_category,shape,extra,flavor,language,size,write_us):
        return dbManager.commit(
            f"INSERT INTO customized_cakes (user_email,product_category,shape,extra,flavor,language,size,write_us) VALUES ('{user_email}','{product_category}','{shape}','{extra}','{flavor}','{language}','{size}','{write_us}')");

    @staticmethod
    def get_transaction(transaction_number):
        return dbManager.fetch(
            f"SELECT transaction_number FROM customized_cakes WHERE transaction_number = '{transaction_number}'");


    @staticmethod
    def remove_customize_from_customized_cakes(user_email ,tran_num):
        return dbManager.commit(
            f"DELETE FROM customized_cakes WHERE user_email='{user_email}' AND transaction_number={tran_num} ");

    @staticmethod
    def remove_All_User_customized(user_email):
        return dbManager.commit(
            f"DELETE FROM customized_cakes WHERE user_email='{user_email}'");

# Creates an instance for the DBManager class for export.
customized_cake = Customized_Cakes()



