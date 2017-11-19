class JsonNoteController < ApplicationController
    
    def index
        @notes = Note.all.order("created_at DESC")
        render json: @notes.to_json
    end
end
