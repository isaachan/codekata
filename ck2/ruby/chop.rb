def chop(element, list)
  return do_chop(element, list, 0, list.length)
end

def do_chop(element, list, start, finish)
  length = finish - start
  return -1 if length == 0
  return ((list.include? element) ? start : -1) if length == 1

  middleIndex = start + length/2
  middleElement = list[middleIndex]
  
  return middleIndex if element == middleElement

  return element < middleElement ?
    do_chop(element, list, start, middleIndex) :
    do_chop(element, list, middleIndex, finish)
end
