class PeopleController < ApplicationController
	def hello
		@name = "Rusty"
	end

	def goodbye
	end

	def index
		# Retrieve all people from db
		@people = Person.all
	end

	def show
		# binding.pry
		url_id = params[:id]
		#Figure out which person we're looking for based off of ID
		@person = Person.find(url_id)
		#Retrieve that person's information
		#Send it to View
	end

	def new
		@person = Person.new
	end

	def create
		# Make new person with params data
		@person = Person.new(person_params)

		if @person.save
			redirect_to person_path()
		else
			render :new
		end
		#redirect somewhere else
	end

	private
	def person_params
		params.require(:person).permit(:name, :age, :town)
	end

end
