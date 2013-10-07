def chop(element, list)
  return -1 if list.length == 0
  return ((list.include? element) ? 0 : -1) if list.length == 1
end
