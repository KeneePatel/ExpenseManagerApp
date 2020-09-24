const String initDbScript = """
  CREATE TABLE Category (
      id INTEGER PRIMARY KEY,
      title TEXT,
      desc TEXT,
      iconCodePoint INTEGER
    );
  """;