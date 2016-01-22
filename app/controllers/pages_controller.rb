class PagesController < ApplicationController
    
    def home
        @homer_role = Role.find(1)
        @contractor_role = Role.find(2)
        @trader_role = Role.find(3)
    end
    
    def about
    end
    
end
