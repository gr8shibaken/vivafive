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
