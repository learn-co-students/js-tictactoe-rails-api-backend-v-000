
1. game has
  i. unique ID
  ii. State = array representing the present state of the board
    eg: #  X | O | X
        # -----------
        #    | O | O
        # -----------
        #    |   | X

        state = ["X", "O", "X", "", "O", "O", "", "", "X"]

2. Read up on Serializers
    You can return an entire HTML via a web request, but you're only concerned with data during API queries.
    Serialization is taking executable code (eg. Ruby Object) and returning it as a consumable string to be reconstructured back into executable code.
    Serializing an object returns its current state or values of attributes.
    class - what an object could be
    serialized - what an object is
    JSON: JavaScript Object Notation -
      modern method to a. consume data from an API
                       b. serialize that data for consumption

    Easier to read that XML, less size (think mobile data plans).
