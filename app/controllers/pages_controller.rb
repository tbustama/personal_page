class PagesController < ApplicationController
    def about
        @title = 'About Me'
        @content = "This is where I will put my about me section one day."
    end
end
