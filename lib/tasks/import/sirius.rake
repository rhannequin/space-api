require 'active_support'

namespace :import do
  desc 'Import Sirius'
  task sirius: :environment do
    log = Logger.new(STDOUT).tap { STDOUT.sync = true }
    start_time = Time.zone.now

    log.info "Hipparcos data"

    filename = File.join(Rails.root, 'db', 'seeds', 'sirius_hip.dat')
    File.open(filename).each do |line|
      puts line[0...1]     # Catalog
      puts line[9...14]    # HIP number
      puts line[15...16]   # Proximity flag
      puts line[17...28]   # Right ascension (h m s J1991.25)
      puts line[29...40]   # Declination (deg ' " J1991.25)
      puts line[41...46]   # Magnitude
      puts line[47...48]   # Coarse variability flag
      puts line[49...50]   # Source of magnitude
      puts line[51...63]   # RAdeg
      puts line[64...76]   # DEdeg
      puts line[77...78]   # Reference flag for astrometry
      puts line[79...86]   # Trigonometric parallax
      puts line[87...95]   # Proper motion mu_alpha
      puts line[96...104]  # Proper motion mu_delta
      puts line[105...111] # Standard error in RA*cos
      puts line[105...111] # Standard error in RA*cos
      puts line[112...118] # Standard error in DE
      puts line[119...125] # Standard error in Plx
      puts line[126...132] # Standard error in pmRA
      puts line[133...139] # Standard error in pmDE
    end

    log.info "Tycho 2 data"

    filename = File.join(Rails.root, 'db', 'seeds', 'sirius_tyc.dat')
    File.open(filename).each do |line|
      puts line[0...1]     # Catalog
    end

    end_time = Time.zone.now
    time_spend = (end_time - start_time).to_i
    log.info "Executed in: #{time_spend} #{'second'.pluralize(time_spend)}."
  end
end
