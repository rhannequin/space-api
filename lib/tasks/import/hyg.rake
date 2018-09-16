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

    # stars = []
    before = []
    after = []
    CSV.open(filename, headers: true, converters: :numeric).first(35000).each do |row|
      data = row.to_hash
      puts "#{data['proper']} : #{data['ra']} / #{data['dec']} => #{decimal_degrees_to_dms(data['ra'])} / #{decimal_degrees_to_dms(data['dec'])}" unless data['proper'].nil?
      # before << data['lum'].to_s.split('.').first.size
      # after << data['lum'].to_s.split('.').last.size
      # stars << Star.new(
      #   apparent_magnitude: data['mag'],
      #   absolute_magnitude: data['absmag'],
      #   luminosity: data['lum'],
      #   right_ascension: data['ra'],
      #   declination: data['dec'],
      #   declination: data['rv']
      # )
    end
    # puts before.max
    # puts after.max
    # Star.import(stars)

    end_time = Time.zone.now
    time_spend = (end_time - start_time).to_i
    log.info "Executed in: #{time_spend} #{'second'.pluralize(time_spend)}."
  end
end

def decimal_degrees_to_dms(decimal_degrees)
  d = decimal_degrees.to_s.split('.').first.to_i
  mm = "0.#{decimal_degrees.to_s.split('.').last.to_i}".to_f * 60
  m = mm.to_s.split('.').first
  s = "0.#{mm.to_s.split('.').last.to_i}".to_f * 60
  "#{d}° #{m}' #{s}''"
end

