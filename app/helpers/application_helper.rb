 require 'httparty'
 module ApplicationHelper
    def self.req_get(url_path)
        Rails.logger.info "===========> #{url_path}"
        Rails.logger.info "===========> #{ENV['API_AGAMA']}"
        url = ENV['API_AGAMA']+url_path
        res = HTTParty.get(url)
        return res.parsed_response
    end

    def self.req_post(url_path,data)
        url = ENV['API_AGAMA']+url_path
        res = HTTParty.post(url,
            :body => data,
            verify: false
        )
        return res.parsed_response
    end
    def self.req_put(url_path,data)
        url = ENV['API_AGAMA']+url_path
        res = HTTParty.post(
            url,
            :body =>data)
        return res.parsed_response
    end
    
    def self.req_post_del(url_path)
        url = ENV['API_AGAMA']+url_path
        res = HTTParty.post(url)
        return res.parsed_response
    end
end