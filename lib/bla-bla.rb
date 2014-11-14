module BlaBla
  WORD_LIST = ["legendary", "awesome", "wait", "for", "it", "brother",
               "story", "cool", "fox", "great", "white", "polar", "bear",
               "university", "such", "educating"]

  def BlaBla.author
    WORD_LIST.sample.capitalize + " " + WORD_LIST.sample.capitalize
  end
  
  def BlaBla.title
    n = rand(4)
    s = WORD_LIST.sample.capitalize 
    n.times do 
      s += " " + WORD_LIST.sample
    end
    s
  end
  
  def BlaBla.sentence
    n = 4 + rand(5)
    s = WORD_LIST.sample.capitalize 
    n.times do 
      s += " " + WORD_LIST.sample
    end
    s + "."
  end
  
  def BlaBla.content
    n = rand(4)
    s = BlaBla.sentence 
    n.times do 
      s += " " + BlaBla.sentence
    end
    s
  end
end
