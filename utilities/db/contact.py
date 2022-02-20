from utilities.db.db_manager import dbManager


class ContactUs:
    @staticmethod
    def insert_message_to_contact_us(message):
        return dbManager.commit(
            f"INSERT INTO contact_us (message) VALUES ('{message}')");

# Creates an instance for the DBManager class for export.
contact = ContactUs()