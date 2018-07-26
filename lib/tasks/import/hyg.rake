require 'csv'
require 'active_support'
require 'activerecord-import'

namespace :import do
  desc 'Import HYG Database stars'
  task hyg: :environment do
    log = Logger.new(STDOUT).tap { STDOUT.sync = true }
    start_time = Time.zone.now

    Star.destroy_all

    filename = File.join(Rails.root, 'db', 'seeds', 'hygdata_v3.csv')

    stars = []
    CSV.open(filename, headers: true, converters: :numeric).first(500).each do |row|
      data = row.to_hash
      stars << Star.new(
        apparent_magnitude: data['mag'],
        absolute_magnitude: data['absmag'],
        right_ascension: data['ra'],
        declination: data['dec']
      )
    end
    Star.import(stars)

    end_time = Time.zone.now
    time_spend = (end_time - start_time).to_i
    log.info "Executed in: #{time_spend} #{'second'.pluralize(time_spend)}."
  end
end
