from utilities.db.db_manager import dbManager


class Products:

    @staticmethod
    def get_all_gallery_cakes():
        return dbManager.fetch("SELECT * FROM gallery")

    @staticmethod
    def get_5_gallery_cakes():
        return dbManager.fetch("SELECT * FROM gallery LIMIT 5")

    @staticmethod
    def get_all_products():
        return dbManager.fetch("SELECT * FROM products")

    @staticmethod
    def get_all_cakes():
        return dbManager.fetch("SELECT * FROM cakes")

    @staticmethod
    def get_products_by_ids(ids):
        if not isinstance(ids,list):
            ids = [ids]
        return dbManager.fetch(
            f"SELECT * FROM products WHERE id IN {f'({ids[0]})' if len(ids) == 1 else tuple(ids)}");

    @staticmethod
    def get_cakes_by_ids(ids):
        if not isinstance(ids,list):
            ids = [ids]
        return dbManager.fetch(
            f"SELECT * FROM cakes WHERE product_id IN {f'({ids[0]})' if len(ids) == 1 else tuple(ids)}");

    @staticmethod
    def get_products_by_id(ids):
        if not isinstance(ids,list):
            ids = [ids]
        return dbManager.fetch(
            f"SELECT * FROM products WHERE product_id IN {f'({ids[0]})' if len(ids) == 1 else tuple(ids)}");

# Creates an instance for the DBManager class for export.
product = Products()