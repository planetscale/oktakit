module Oktakit
  class Client
    module IdentityGovernance
      BASE_PATH = "/governance/api/v1"

      def get_access_request(id, options = {})
        get("/requests/#{id}", options.merge(base_path: BASE_PATH))
      end

      def list_all_access_requests(options = {})
        get('/requests', options.merge(base_path: BASE_PATH))
      end

      def create_access_request(options = {})
        post("/requests", options.merge(base_path: BASE_PATH))
      end
    end
  end
end
