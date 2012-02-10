users = ['shibata','teshima','kudo','kawahito','ogawa','tagashira']
users.each do |user|
  User.create!(:name => user)
end

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

open("db/dummy/tag.tsv") {|f|
  professionals = User.all
  f.each_line {|line|
    line = line.strip
    next if line.empty?
    name,parent,title,client_questions = line.split("\t")
    Tag.create!(
      :name   => name,
      :parent => Tag.find_by_name(parent)
    )
    if title
      Title.create!(
        :description  => title,
        :tag          => Tag.last
      )
    end
    if client_questions
      client_questions.split(",").each{|client_question|
        TagsClientQuestion.create!(
          :tag              => Tag.last,
          :client_question  => ClientQuestion.find(client_question)
        )
      }
    end
  }
}

Tag.all.each {|tag|
  if !tag.has_children?
    number_of_professional_question = 5
    professional_questions = Array.new

    number_of_professional_question.times{|i| professional_questions.push(i+1)}
    
    number_of_professional_question_sample = 3
    professional_question_samples = professional_questions.sample(number_of_professional_question_sample)

    professional_question_samples.each do |sample|
      TagsProfessionalQuestion.create!(
        :tag => tag,
        :professional_question => ProfessionalQuestion.find(sample)
      )
    end
  end
}


