data = CSV.generate do |csv|
  csv << ['id', 'title', 'subtitle', 'abstract', 'description', 'rating', 'comment (optional)']
  Event.order(:id).to_a.each do |event|
    csv << [event.id, event.title, event.subtitle, event.abstract, event.description, nil, nil]
  end
end

path = 'tmp/events.csv'

File.open(path, 'w') do |file|
  file.puts data
end

puts "Events exported to #{path}"