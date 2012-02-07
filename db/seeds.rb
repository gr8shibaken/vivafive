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
    
    number_of_question.times{|i| questions.push(i+1)}
    
    number_of_sample=8
    samples = questions.sample(number_of_sample)

    samples.each do |sample|
      TagsQuestion.create!(
        :tag_id => tag.id,
        :question_id => sample
      )
    end
  end
}
