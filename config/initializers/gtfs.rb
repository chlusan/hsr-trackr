module HsrTrackr
  GTFS_SOURCE = GTFS::Source.build("#{Rails.root}/public/gtfs/gtfs-2014-11-28.zip")
end
