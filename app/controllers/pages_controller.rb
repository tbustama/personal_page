class PagesController < ApplicationController
    def about
        @title = 'About Me'
        @content = "I am a Full Stack Software Engineer seeking full time employment"
    end
end
