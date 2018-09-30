namespace :populate_db_from_json do

  require 'active_record'
  task emojis: :environment do
    root = Rails.root.to_s
    file = File.read("#{root}/db/emoji.json")
    emoji_hash = JSON.parse(file)

    add_emoji = emoji_hash.each do |key, value|
      add_emoji = Emoji.new
      add_emoji.code = key['codes']
      add_emoji.char = key['char']
      add_emoji.name = key['name']
      add_emoji.keywords = key['keywords']
      add_emoji.save
    end
  end
end
