open("db/dummy/tag.tsv") {|f|
  f.each_line {|line|
    line = line.strip
    next if line.empty?
    name,parent = line.split("\t")
    Tag.create!(
      :name   => name,
      :parent => Tag.find_by_name(parent)
    )
  }
}

open("db/dummy/question.tsv") {|f|
  f.each_line {|line|
    Question.create!(
      :description => line.delete("\n")
    )
  }
}

Tag.all.each {|tag|
  if !tag.has_children?
    Title.create!(
      :name => "#{tag.name}-title",
      :tag  => tag
    )
  end
}

Tag.all.each {|tag|
  if !tag.has_children?
    number_of_question=14
    questions = Array.new

    i=1
    while i<=number_of_question do
      questions.push(i)
      i+=1
    end

    number_of_sample=8
    samples = questions.sample(number_of_sample)

    samples.each do |s|
      TagsQuestion.create!(
        :tag_id => tag.id,
        :question_id => s
      )
    end

  end
}
=begin
Tag.all.each {|tag|
  if !tag.has_children?
    number_of_questions=14
    number_of_sample=8

#    questions = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
#    arr2 = arr.sample(8)

    questions = Array.new(number_of_questions)
    samples = questions.sample(number_of_sample)

    samples.each do |s|
      TagQRelation.create!(
        :tag_id => tag.id,
        :question_id => s
      )
    end

  end
}
=end
