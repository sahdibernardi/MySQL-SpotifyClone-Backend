DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.albuns(
      album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      title VARCHAR(250) NOT NULL,
      release_year YEAR NOT NULL,
      artist_id INT NOT NULL,
        FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artists(
      artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      artist VARCHAR(250) NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.songs(
      song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      song VARCHAR(250) NOT NULL,
      duratin_seconds INT NOT NULL,
      album_id INT NOT NULL,
        FOREIGN KEY (album_id) REFERENCES albuns (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.reproductions(
      user_id INT NOT NULL,
      song_id INT NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users (user_id)      
        FOREIGN KEY (song_id) REFERENCES songs (song_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.following(
      user_id INT NOT NULL,
      artist_id INT NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users (user_id)      
        FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.users(
      user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      user VARCHAR(250) NOT NULL,
      age INT NOT NULL,
      plan_id INT NOT NULL,
      sign_date DATE NOT NULL,
        FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
  ) engine = InnoDB;

      CREATE TABLE SpotifyClone.plans(
      plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plan VARCHAR(50) NOT NULL,
      plan_value decimal(5,2) NOT NULL,
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');
