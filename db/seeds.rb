gtfs_source = HsrTrackr::GTFS_SOURCE

# agencies

Agency.delete_all
gtfs_source.agencies.each do |agency|

  Agency.create({ id: agency.id,
                  name: agency.name,
                  phone: agency.phone,
                  url: agency.url,
                  fare_url: agency.fare_url,
                  timezone: agency.timezone,
                  lang: agency.lang })

end

# calendar_dates

CalendarDate.delete_all
gtfs_source.calendar_dates.each do |calendar_date|

  CalendarDate.create({ service_id: calendar_date.service_id,
                        date: calendar_date.date,
                        exception_type: calendar_date.exception_type })

end

# calendars

Calendar.delete_all
gtfs_source.calendars.each do |calendar|

  Calendar.create({ service_id: calendar.service_id,
                    start_date: calendar.start_date,
                    end_date: calendar.end_date,
                    monday: calendar.monday,
                    tuesday: calendar.tuesday,
                    wednesday: calendar.wednesday,
                    thursday: calendar.thursday,
                    friday: calendar.friday,
                    saturday: calendar.saturday,
                    sunday: calendar.sunday })

end

# routes

Route.delete_all
gtfs_source.routes.each do |route|

  Route.create({  id: route.id,
                  agency_id: route.agency_id,
                  short_name: route.short_name,
                  long_name: route.long_name,
                  route_type: route.type,
                  text_color: route.text_color,
                  color: route.color,
                  url: route.url,
                  desc: route.desc })

end

# shapes

Shape.delete_all
gtfs_source.shapes.each do |shape|

  Shape.create({  shape_id: shape.id,
                  pt_lat: shape.pt_lat,
                  pt_lon: shape.pt_lon,
                  pt_sequence: shape.pt_sequence,
                  dist_traveled: shape.dist_traveled })

end

# stop_times

StopTime.delete_all
gtfs_source.stop_times.each do |stop_time|

  StopTime.create({ trip_id: stop_time.trip_id,
                    arrival_time: stop_time.arrival_time,
                    departure_time: stop_time.departure_time,
                    stop_id: stop_time.stop_id,
                    stop_sequence: stop_time.stop_sequence,
                    stop_headsign: stop_time.stop_headsign,
                    pickup_type: stop_time.pickup_type,
                    drop_off_type: stop_time.drop_off_type,
                    shape_dist_traveled: stop_time.shape_dist_traveled })

end

# stops

Stop.delete_all
gtfs_source.stops.each do |stop|

  Stop.create({ id: stop.id,
                zone_id: stop.zone_id,
                code: stop.code,
                name: stop.name,
                lat: stop.lat,
                lon: stop.lon,
                parent_station: stop.parent_station,
                url: stop.url,
                desc: stop.desc,
                location_type: stop.location_type,
                wheelchair_boarding: stop.wheelchair_boarding })

end

# trips

Trip.delete_all
gtfs_source.trips.each do |trip|

  Trip.create({ id: trip.id,
                block_id: trip.block_id,
                route_id: trip.route_id,
                direction_id: trip.direction_id,
                shape_id: trip.shape_id,
                service_id: trip.service_id,
                headsign: trip.headsign,
                short_name: trip.short_name,
                # for some reason Rails thinks that the trip objects don't have wheelchair_boarding or bikes_allowed
                # properties, so we're substituting some magic. thankfully, ALL trips allow wheelchairs/bikes.
                wheelchair_boarding: "1",
                bikes_allowed: "1" })

end
