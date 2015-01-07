class WorksController < ApplicationController
	def set_access_control_headers 
		headers['Access-Control-Allow-Origin'] = '*' 
		headers['Access-Control-Request-Method'] = '*' 
 		headers['Access-Control-Allow-Headers'] = 'Content-Type, Content-Range, Content-Disposition, Content-Description'
	end
	def fetch_question
    	@work = Work.find_by_id(params[:id])
  	end
	def index
	  	@works = Work.all
	    respond_to do |format|
	      	format.json { render json: @works }
	      	format.xml { render xml: @works }
	    end
	end
	def show
		@work = Work.find_by_id(params[:id])
    	respond_to do |format|
      		format.json { render json: @work }
      		format.xml { render xml: @work }
    	end
  	end
	def create
		@work = Work.new(work_params)
	    respond_to do |format|
	      	if @work.save
	        	format.json { render json: @work, status: :created }
	        	format.xml { render xml: @work, status: :created }
	      	else
	        	format.json { render json: @work.errors, status: :unprocessable_entity }
	        	format.xml { render xml: @work.errors, status: :unprocessable_entity }
	      	end
	    end
	end
	def update
		@work = Work.find_by_id(params[:id])
    	respond_to do |format|
      		if @work.update_attributes(work_params)
        		format.json { head :no_content, status: :ok }
        		format.xml { head :no_content, status: :ok }
      		else
        		format.json { render json: @work.errors, status: :unprocessable_entity }
        		format.xml { render xml: @work.errors, status: :unprocessable_entity }
      		end
   		end
  	end
	def destroy
		@work = Work.find_by_id(params[:id])
	    respond_to do |format|
	      	if @work.destroy
	        	format.json { head :no_content, status: :ok }
	        	format.xml { head :no_content, status: :ok }
	      	else
	        	format.json { render json: @work.errors, status: :unprocessable_entity }
	        	format.xml { render xml: @work.errors, status: :unprocessable_entity }
	      	end
	    end
	 end
	def upload
	  uploaded_io = params[:work][:pahtImage]
	  File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
	    file.write(uploaded_io.read)
	  end
	end
	def work_params
      params.require(:work).permit(:id, :workTitle, :pathImage, :workText, :workTags)
    end
end
