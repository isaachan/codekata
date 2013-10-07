def chop(element, list)
  return do_chop(element, list, 0, list.length)
end

def do_chop(element, list, start, finish)
  length = finish - start
  return -1 if length == 0
  return ((list.include? element) ? start : -1) if length == 1

  middleIndex = length / 2
  middleElement = list[middleIndex+start]
  if (element == middleElement)
    return middleIndex + start
  end

  if element < middleElement
    return do_chop(element, list, start, middleIndex+start)
  end

  if element > middleElement
    return do_chop(element, list, middleIndex+start, finish)
  end
end
