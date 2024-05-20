class PropertyUtil:
    @staticmethod
    def getProperty():
        server_name = "DESKTOP-BG1K7HN\SQLEXPRESS05"
        database_name = "CarRental"
        
        
        conn_str = (
            f"Driver={{ODBC Driver 17 for SQL Server}};"
            f"Server={server_name};"
            f"Database={database_name};"
            f"Trusted_Connection=yes;"
        )

        return conn_str
