users = ['shibata','teshima','kudo','kawahito']
users.each do |user|
  User.create!(:name => user)
end

open("db/dummy/tag.tsv") {|f|
  f.each_line {|line|
    line = line.strip
    next if line.empty?
    name,parent,title = line.split("\t")
    Tag.create!(
      :name   => name,
      :parent => Tag.find_by_name(parent)
    )
    if title
      Title.create!(
        :name => title,
        :tag  => Tag.last
      )
    end
  }
}

open("db/dummy/client_question.tsv") {|f|
  f.each_line {|line|
    ClientQuestion.create!(
      :title => line.strip
    )
  }
}

open("db/dummy/professional_question.tsv") {|f|
  f.each_line {|line|
    ProfessionalQuestion.create!(
      :title => line.strip
    )
  }
}

Tag.all.each {|tag|
  if !tag.has_children?
    number_of_client_question = 14
    client_questions = Array.new
    
    number_of_client_question.times{|i| client_questions.push(i+1)}
    
    number_of_client_question_sample = 8
    client_question_samples = client_questions.sample(number_of_client_question_sample)

    client_question_samples.each do |sample|
      TagsClientQuestion.create!(
        :tag_id => tag.id,
        :client_question_id => sample
      )
    end

    number_of_professional_question = 5
    professional_questions = Array.new

    number_of_professional_question.times{|i| professional_questions.push(i+1)}
    
    number_of_professional_question_sample = 3
    professional_question_samples = professional_questions.sample(number_of_professional_question_sample)

    professional_question_samples.each do |sample|
      TagsProfessionalQuestion.create!(
        :tag_id => tag.id,
        :professional_question_id => sample
      )
    end
  end
}
