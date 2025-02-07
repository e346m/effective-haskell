module Main where
makeGreeting salutation person
  = salutation <> " " <> person

extendedGreeting person =
  let hello = makeGreeting helloStr person
      goodbye = makeGreeting "I hope you have a nice afternoon" person
      helloStr = "Hello"
  in hello <> "\n" <> goodbye

main = print "no salutation to show yet"
