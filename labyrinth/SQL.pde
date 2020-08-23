String user = "player";
String pass = "thispassissecure";
String database = "labhighscoredb";
String HighscoreInfo;


void initSQL() {
  hsdb = new MySQL(this, "84.227.79.186:3306", database, user, pass);
}

void storehsSQL() {

  if (hsdb.connect()) {
    try {
      nam = loadStrings("Data/playerName.txt");
      for (int i = 0; i < nam.length; i++) {


        hsdb.query("USE labhighscoredb;");
        hsdb.query("INSERT INTO highscores (`id`,`name`,`highscore`) VALUES (NULL, '%s', %d);", nam[i], pointsFinal);
      }
    }
    catch(Exception e) {
      println("Insertion Failed");
    }
  }
}

void getHighscoreSQL() {
  hsdb.query("USE labhighscoredb;");
  hsdb.query("SELECT name, highscore FROM highscores ORDER BY highscore DESC");
  hsdb.next();
  HighscoreInfo = hsdb.getString("name")+" "+hsdb.getInt("highscore");
  println(HighscoreInfo);
}
