class SearchQuery < ApplicationRecord
    validates :query, presence: true
    validates :ip, presence: true
  
    def self.record(query, ip)
      create!(query: query, ip: ip)
    end
  
    def self.update_analytics(query)
      # logic: Increment a counter for each unique query
      analytics_entry = find_by(query: query)
  
      if analytics_entry
        analytics_entry.increment!(:count)
      else
        create!(query: query, count: 1)
      end
    end
  end
  