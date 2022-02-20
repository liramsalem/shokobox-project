from utilities.db.db_manager import dbManager


class Questions:

    @staticmethod
    def get_all_question():
        return dbManager.fetch("SELECT * FROM question")

# Creates an instance for the DBManager class for export.
question = Questions()