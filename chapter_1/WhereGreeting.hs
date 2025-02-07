module WhereGreeting where
   lastWhereGreeting name place =
    let
        salutation = "Hello" <> " " <> name <> "!"
        meetingInfo = location "13"
    in salutation <> " " <> meetingInfo
    where
        location day = place <> " is the best place on " <> day
