class PostTble < ApplicationRecord
    belongs_to :user

    def self.to_csv
        attributes = %w{id title description status}
        CSV.generate(headers: true) do |csv|
            csv << attributes
            all.each do |post|
                csv << post.attributes.values_at(*attributes)
            end
        end
    end
    def self.import(file)
        CSV.foreach(file.path,headers: true) do |row|
            posts = find_by_id(row["id"]) || new
            posts.attributes = row.to_hash
            posts.save!
        end
    end
end
