from utilities.db.db_manager import dbManager


class Orders:

    @staticmethod
    def insert_to_order(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice):
        return dbManager.commit(
            f"INSERT INTO orders (fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice) VALUES ('{fullname_order}','{email_order}','{phone_order}','{street_order}','{city_order}','{state_order}','{zip_order}','{user_email}','{totalPrice}')");

    @staticmethod
    def insert_to_items_in_order(order_id,product_id,quantity):
        return dbManager.commit(
            f"INSERT INTO items_in_order (order_id,product_id,quantity) VALUES ('{order_id}','{product_id}','{quantity}')");

    @staticmethod
    def order_id(user_email):
        id= dbManager.fetch(
            f"SELECT max(order_id) as max_id from orders WHERE user_email='{user_email}'")
        return id[0][0]


    @staticmethod
    def get_all_order_id_of_user(user_email):
        return dbManager.fetch(
            f"SELECT order_id, DT, totalPrice  from orders WHERE user_email='{user_email}'")

    @staticmethod
    def get_all_items_in_order_of_user(order_id):
        return dbManager.fetch(
            f"SELECT s2.product_name,s1.quantity  from items_in_order as s1 join products as s2 ON s1.product_id = s2.product_id WHERE order_id='{order_id}'")


# Creates an instance for the DBManager class for export.
order = Orders()

