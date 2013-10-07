def chop(element, list)
  return -1 if list.length == 0
  return ((list.include? element) ? 0 : -1) if list.length == 1

  middleIndex = list.length / 2
  middleElement = list[middleIndex]
  if (element == middleElement)
    return middleIndex
  end
end
