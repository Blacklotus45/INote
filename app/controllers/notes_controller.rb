class NotesController < ApplicationController
    
    def index
    end
    
    def show
    end
    
    def new
        @note = Note.new
    end
    
    def create
        @note = Note.new(note_params)
        
        if @note.save
            redirect_to @note 
        else
            render 'new'
        end
        
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
        
        def note_params
            params.require(:note).permit(:title, :content)
        end
end
