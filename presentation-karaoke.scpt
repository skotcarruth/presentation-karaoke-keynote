set tdelay to 20 -- seconds  -- the length of  time each card is shown.

tell application "Keynote"
  activate

  tell the front document
    repeat with i in my mixIndexes(count slides)
      set the current slide to slide i

      delay tdelay
    end repeat
  end tell

end tell

on mixIndexes(n)
  set l to {1}
  if n is 1 then return l
  repeat with i from 2 to n
    set end of l to i
    set j to some item of l
    tell item i of l to set {item i of l, item j of l} to {item j of l, it}
  end repeat
  return l
end mixIndexes
