class PagesController < ApplicationController
    def about
        @title = 'About Me'
        @content = "I am an aspiring Software Engineer enrolled in the Flatiron School Immersive Bootcamp."
    end
end
