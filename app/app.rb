require 'pry'
class App
    @@items = ["Apples","Carrots","Pears"]
    def call(env)
        # 1 
        # return [ 200, {'Content-Type' => 'text/html'}, ["Hello"] ]

        # 2
        # resp = Rack::Response.new

        # num_1 = Kernel.rand(1..20)
        # num_2 = Kernel.rand(1..20)
        # num_3 = Kernel.rand(1..20)

        # resp.write "#{num_1}\n"
        # resp.write "#{num_2}\n"
        # resp.write "#{num_3}\n"

        # if num_1==num_2 && num_2==num_3
        #   resp.write "You Win"
        # else
        #   resp.write "You Lose"
        # end

        # resp.finish

        # 3 
        resp = Rack::Response.new
        req = Rack::Request.new(env)
        # binding.pry
        if req.path.match(/items/)
            @@items.each do |item|
                resp.write "#{item}\n"
            end
        elsif req.path.match(/search/)
            search_term = req.params["q"]
            if @@items.include?(search_term)
                resp.write "#{search_term} is one of our items"
            else
                resp.write "Couldn't find #{search_term}"
            end
        else
            resp.write "Path Not Found"
        end
        resp.finish
    end

end