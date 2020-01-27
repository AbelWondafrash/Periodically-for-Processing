class Periodically {
  int patience = 1000;

  long lastTime;
  long originalTime;

  boolean state;
  boolean originalState;

  Periodically () {
    lastTime = millis ();
    originalTime = lastTime;
  }
  Periodically (int patience) {
    this.patience = patience;
    new Periodically ();
  }
  Periodically (int patience, boolean state) {
    this.state = state;
    originalState = state;
    new Periodically (patience);
  }

  void setPatience (int patience) {
    this.patience = patience;
  }
  void reset () {
    lastTime = millis ();
    state = originalState;
  }

  double elapsedTime () {
    return millis () - lastTime;
  }
  double elapsedOriginalTime () {
    return millis () - originalTime;
  }

  boolean getState () {
    itsTime ();
    return state;
  }

  boolean itsTime () {
    if (pastTime ()) {
      lastTime = millis ();
      state = !state;
      return true;
    }
    return false;
  }
  boolean pastTime () {
    return elapsedTime () > patience;
  }
  boolean pastOriginalTime () {
    return elapsedOriginalTime () > patience;
  }
  boolean pastHalfTime () {
    return elapsedTime () > patience/2.0;
  }
};
