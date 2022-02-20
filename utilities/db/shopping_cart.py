from utilities.db.db_manager import dbManager


class Shopping_Cart:

    @staticmethod
    def insert_product_to_cart(user_email,product_id):
        return dbManager.commit(
            f"INSERT INTO shopping_cart (user_email,product_id) VALUES ('{user_email}','{product_id}')");

    @staticmethod
    def remove_product_from_cart(user_email,product_id):
        return dbManager.commit(
            f"DELETE FROM shopping_cart WHERE user_email='{user_email}' AND product_id={product_id} LIMIT 1");

    @staticmethod
    def remove_All_User_products(user_email):
        return dbManager.commit(
            f"DELETE FROM shopping_cart WHERE user_email='{user_email}'");

    @staticmethod
    def get_customized_cart_user(user_email,tran_num):
        return dbManager.fetch(
        f"SELECT s1.shape, s1.extra, s1.flavor, s1.language, s1.size, s1.write_us , s2.product_price FROM customized_cakes AS s1 JOIN products AS s2 ON s1.size = s2.product_name WHERE user_email = '{user_email}' and transaction_number='{tran_num}'");

    @staticmethod
    def get_all_customized_cart_user(user_email):
        return dbManager.fetch(
        f"SELECT s1.shape, s1.extra, s1.flavor, s1.language, s1.size, s1.write_us , s2.product_price, s1.transaction_number, s2.product_id FROM customized_cakes AS s1 JOIN products AS s2 ON s1.size = s2.product_name WHERE user_email = '{user_email}'");

    @staticmethod
    def get_cart_user(user_email):
        return dbManager.fetch(
        f"SELECT s1.product_id, count(*) as quantity, s2.product_discription, s2.product_img, s2.product_price, s2.product_name FROM shopping_cart AS s1 JOIN cakes AS s2 ON s1.product_id = s2.product_id WHERE user_email = '{user_email}' group by product_id ");

    @staticmethod
    def get_total_price(user_email):
        return dbManager.fetch(
            f"SELECT sum(s2.product_price) as total FROM shopping_cart AS s1 JOIN cakes AS s2 ON s1.product_id = s2.product_id WHERE user_email = '{user_email}'");

    @staticmethod
    def get_total_price_cust(user_email):
        return dbManager.fetch(
            f"SELECT sum(s2.product_price) as price  FROM customized_cakes AS s1 JOIN products AS s2 ON s1.size = s2.product_name WHERE user_email = '{user_email}'")


# Creates an instance for the DBManager class for export.
shoping_cart = Shopping_Cart()

