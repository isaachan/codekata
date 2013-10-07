def chop(element, list)
  return do_chop(element, list, 0, list.length)
end

def do_chop(element, list, start, finish)
  length = finish - start
  return -1 if length == 0
  return ((list.include? element) ? 0 : -1) if length == 1

  middleIndex = length / 2
  middleElement = list[middleIndex]
  if (element == middleElement)
    return middleIndex
  end

  if element < middleElement
    do_chop(element, list, 0, middleIndex)
  end
end
