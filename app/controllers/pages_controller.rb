class PagesController < ApplicationController
    def search  
        if params[:search].blank?  
            redirect_to(root_path, alert: "Empty field!") and return  
        else
            @parameter = "%" + params[:search].downcase + "%"
            @results = Item.all.where("lower(name) LIKE :search", search: @parameter)
        end 
    end
    
    def collections
        
        @collection = params[:col]
        
          #if collection is New arrivals then sort by creation date
        if @collection == "New Arrivals"
            @items = Item.where(created_at: (Time.now.midnight - 3.month)..Time.now.midnight)
        else
            @items = Item.where(collection: @collection)
        end
   
    end
    
    def filtered
        @collection = params[:col]
        
        red = params[:red]
        blue = params[:blue]
        black =  params[:black]
        yellow = params[:yellow]
        green =  params[:green]
        grey = params[:grey]
        white =  params[:white]
        pink =  params[:pink]
        denim =  params[:denim]
        leather = params[:leather]
        stylish = params[:stylish]
        winter = params[:winter]
        casual = params[:casual]
        
        query = "SELECT id FROM items WHERE collection = \'#{@collection}\' AND"
        
        if !params[:size].nil?
            query = query + " #{params[:size].downcase} = '1' AND"
        end
        
        query = query + " id IN (SELECT id FROM items WHERE"
        query = query + " color1 = 'Red' OR color2 = 'Red' OR color3 = 'Red' OR" unless !red
        query = query + " color1 = 'Blue' OR color2 = 'Blue' OR color3 = 'Blue' OR" unless !blue
        query = query + " color1 = 'Black' OR color2 = 'Black' OR color3 = 'Black' OR" unless !black
        query = query + " color1 = 'Yellow' OR color2 = 'Yellow' OR color3 = 'Yellow' OR" unless !yellow
        query = query + " color1 = 'Green' OR color2 = 'Green' OR color3 = 'Green' OR" unless !green
        query = query + " color1 = 'Grey' OR color2 = 'Grey' OR color3 = 'Grey' OR" unless !grey
        query = query + " color1 = 'White' OR color2 = 'White' OR color3 = 'White' OR" unless !white
        query = query + " color1 = 'Pink' OR color2 = 'Pink' OR color3 = 'Pink' OR" unless !pink
        query = query + " color1 = 'Denim' OR color2 = 'Denim' OR color3 = 'Denim' OR" unless !denim
        query = query + " color1 = 'Leather' OR color2 = 'Leather' OR color3 = 'Leather' OR" unless !leather
        
        query = query[0.. -4] + ")"
        puts query
        
        results = ActiveRecord::Base.connection.execute(query)
        
        @items = []
        results.each do |result|
            @items = @items << Item.find(result["id"])
            puts Item.find(result["id"]).name
        end
       
       
       
    
    end
  
end
