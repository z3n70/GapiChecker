require 'httparty'
require 'colorize'

color = "

        
█▀▀ █▀▄▀█ ▄▀█ █▀█ █▀   ▄▀█ █▀█ █   █▀▀ █░█ █▀▀ █▀▀ █▄▀ █▀▀ █▀█
█▄█ █░▀░█ █▀█ █▀▀ ▄█   █▀█ █▀▀ █   █▄▄ █▀█ ██▄ █▄▄ █░█ ██▄ █▀▄

                    coded : [z3n70]
"

puts color.colorize(:red)

def scan()

    apikey="AIzaSyA3bsDl1xddiU_w38hA-fsGea8kWsp5uJM" #api vuln
    # apikey="AIzaSyB41WOlRVKsPo0ZCoznE3qvwQ-AkWoONIY"#api gk vuln
    # apikey="AIzaSyB41WOlRVKsPo0ZCoznE3qvwQ-AkWoONIa"#api invalid
        puts "1. google apis consumersearch 5$ per 1000 request"
        url = "https://www.googleapis.com/customsearch/v1?cx=017576662512468239146:omuauf_lfve&q=lectures&key=#{apikey}"

        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('PERMISSION_DENIED' || 'SERVICE_DISABLED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('PERMISSION_DENIED' || 'SERVICE_DISABLED' || 'forbidden')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "2. staticmap 2$ per 1000 request"
        url = "https://maps.googleapis.com/maps/api/staticmap?center=45%2C10&zoom=7&size=400x400&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('server rejected your request.' || 'The provided API key is invalid.')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('server rejected your request.' || 'The provided API key is invalid.')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "3. streetview 7$ per 1000 request"
        url = "https://maps.googleapis.com/maps/api/streetview?size=400x400&location=40.720032,-73.988354&fov=90&heading=235&pitch=10&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('rejected your request.' || 'API key is invalid.')
            puts "Not Vulnerable".colorize(:red)
        else !result.body.include?('rejected your request.' || 'API key is invalid.')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "4. direction 10$ per 1000 request"
        url = "https://maps.googleapis.com/maps/api/directions/json?origin=Disneyland&destination=Universal+Studios+Hollywood4&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "5. geocode 10$ per 1000 request"
        url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=40,30&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "6. distance matrix 10$ per 1000 request"
        url = "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=40.6655101,-73.89188969999998&destinations=40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "7. find place from text 17$ per 1000 request"
        url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=Museum%20of%20Contemporary%20Art%20Australia&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours,geometry&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "8. autocomplate $3 per 1000 request"
        url = "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=Bingh&types=%28cities%29&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "9. elevation $5 per 1000 request"
        url = "https://maps.googleapis.com/maps/api/elevation/json?locations=39.7391536,-104.9847034&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "10. timezone $5 per 1000 request"
        url = "https://maps.googleapis.com/maps/api/timezone/json?location=39.6034810,-119.6822510&timestamp=1331161200&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "11. nearest roards $10 per 1000 request"
        url = "https://roads.googleapis.com/v1/nearestRoads?points=60.170880,24.942795|60.170879,24.942796|60.170877,24.942796&key=
        #{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('PERMISSION_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('PERMISSION_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "12. geolocation $5 per 1000 request"
        url = "https://www.googleapis.com/geolocation/v1/geolocate?key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.code == 404
            puts 'not vulnerable'.colorize(:red)
        else !result.code == 404
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "13. route to traveled $10 per 1000 request"
        url = "https://roads.googleapis.com/v1/snapToRoads?path=-35.27801,149.12958|-35.28032,149.12907&interpolate=true&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('PERMISSION_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('PERMISSION_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "14. speed limit roads $20 per 1000 request"
        url = "https://roads.googleapis.com/v1/speedLimits?path=38.75807927603043,-9.03741754643809&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('PERMISSION_DENIED' || 'SERVICE_DISABLED')
            puts 'not vulnerable'.colorize(:red)
        elsif result.body.include?('PERMISSION_DENIED' || 'API_KEY_HTTP_REFERRER_BLOCKED')
            puts 'not vulnerable'.colorize(:red)
        elsif result.body.include?('INVALID_ARGUMENT' || 'API_KEY_INVALID')
            puts 'apikey invalid'.colorize(:red)
        else !result.body.include?('API_KEY_HTTP_REFERRER_BLOCKED' || 'PERMISSION_DENIED' || 'SERVICE_DISABLED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "15. place detail $17 per 1000 request"
        url = "https://maps.googleapis.com/maps/api/place/details/json?place_id=ChIJN1t_tDeuEmsRUsoyG83frY4&fields=name,rating,formatted_phone_number&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "16. nearby search-place $32 per 1000 request"
        url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=100&types=food&name=harbour&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "17. text search-place $32 per 1000 request"
        url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=restaurants+in+Sydney&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "18. place photo $7 per 1000 request"
        url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=CnRtAAAATLZNl354RwP_9UKbQ_5Psy40texXePv4oAlgP4qNEkdIrkyse7rPXYGd9D_Uj1rVsQdWT4oRz4QrYAJNpFX7rzqqMlZw2h2E2y5IKMUZ7ouD_SlcHxYq1yL4KbKUv3qtWgTK0A6QbGh87GB3sscrHRIQiG2RrmU_jF4tENr9wGS_YxoUSSDrYjWmrNfeEHSGSc3FyhNLlBU&key=#{apikey}"
        result = HTTParty.head(url, follow_redirects: true)

        if result.code == 403
            puts 'not vulnerable'.colorize(:red)
        else result.code == 302
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        puts "19. query auto complate 5$ per 1000 request"
        url = "https://maps.googleapis.com/maps/api/place/queryautocomplete/json?input=pizza+near%20par&key=#{apikey}"
        result = HTTParty.get(url, follow_redirects: false)

        if result.body.include?('REQUEST_DENIED')
            puts 'not vulnerable'.colorize(:red)
        else !result.body.include?('REQUEST_DENIED')
            puts "Vulnerable => #{url}".colorize(:yellow)
        end

        # puts "20. place embed 5$ per 1000 request"
        # url = "https://www.google.com/maps/embed/v1/place?q=Seattle&key=#{apikey}"
        # result = HTTParty.get(url, follow_redirects: false)

        # if result.body.include?('')
        #     puts 'not vulnerable'.colorize(:red)
        # elsif result.body.include?('Google Maps Platform rejected your request. The provided API key is invalid.')
        #     puts 'not vulnerable'.colorize(:red)
        # else !result.body.include?('The Google Maps Embed API must be used in an iframe.') 
        #     puts "Vulnerable => Poc <iframe width='600' height='450' frameborder='0' style='border:0' src='#{url}'allowfullscreen></iframe>".colorize(:yellow)
        # end        
end
scan()